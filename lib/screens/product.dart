import 'package:flutter/material.dart';

import 'package:kadoqu/utils/constants.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> with SingleTickerProviderStateMixin {
  // final args = ModalRoute.of(context).settings.arguments;
  // print(args);

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.network(
              'https://via.placeholder.com/150',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
            decoration: BoxDecoration(
              color: LIGHT_BLUE,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Bahuhe',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Single Rose Paper Flower',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp 35.000',
                      style: TextStyle(
                        color: GREEN,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.star,
                    color: Colors.grey[500],
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Text(
              'Sisa Stok: 25',
              style: TextStyle(color: GREEN, fontSize: 12),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 180,
                  child: RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    color: GREEN,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Beli",
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  child: RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.green[300],
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Bungkus",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            // padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              border: Border(
                bottom: BorderSide(color: Colors.black),
              ),
            ),
            child: TabBar(
              controller: _controller,
              // isScrollable: true,
              indicatorColor: Colors.black,
              indicatorWeight: 3.0,
              indicatorPadding: EdgeInsets.only(left: 25, right: 25),
              tabs: [
                Tab(
                  text: 'Deskripsi',
                ),
                Tab(
                  text: 'Rincian',
                ),
                Tab(
                  text: 'Ukuran',
                ),
                Tab(
                  text: 'Info Pengiriman',
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Container(
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  child: Text('Rincian'),
                ),
                Container(
                  child: Text('Ukuran'),
                ),
                Container(
                  child: Text('Info Pengiriman'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
