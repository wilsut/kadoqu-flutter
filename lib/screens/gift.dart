import 'package:flutter/material.dart';

import 'package:kadoqu/utils/constants.dart';

final List<String> imageList = [
  'https://ik.imagekit.io/nwiq66cx3pvsy/1001_Inspirasi_Kado/buttons/birthday.png',
  'https://ik.imagekit.io/nwiq66cx3pvsy/1001_Inspirasi_Kado/buttons/bridal_shower.png',
  'https://ik.imagekit.io/nwiq66cx3pvsy/1001_Inspirasi_Kado/buttons/weddings_day.png',
  'https://ik.imagekit.io/nwiq66cx3pvsy/1001_Inspirasi_Kado/buttons/anniversary.png',
  'https://ik.imagekit.io/nwiq66cx3pvsy/1001_Inspirasi_Kado/buttons/graduation.png',
];

Widget product(BuildContext context, String name, String merchant, String price,
        String photo) =>
    GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(3, 5),
            ),
          ],
        ),
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(photo),
            Container(
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(merchant),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(price),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.star,
                      color: Colors.yellow[400],
                      size: 36,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () => Navigator.pushNamed(
        context,
        '/product',
        arguments: {
          'name': name,
          'merchant': merchant,
          'price': price,
          'photo': photo,
        },
      ),
    );

class Gift extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffd1eff7),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0x00d1eff7),
            Color(0x7fd1eff7),
            Color(0x7ff9f9f9),
            Color(0x7ff9f9f9),
          ],
        ),
      ),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Image.network(
              'https://ik.imagekit.io/nwiq66cx3pvsy/1001_Inspirasi_Kado/mobile-main-banner.png',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: imageList
                    .map(
                      (url) => Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                        child: Image.network(
                          url,
                          fit: BoxFit.contain,
                          height: 90,
                        ),
                      ),
                    )
                    .toList()),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButton(
                  child: Text('Atur filter & urutan'),
                  borderSide: BorderSide(color: GREEN),
                  onPressed: () {},
                ),
                Text('250 Produk'),
              ],
            ),
          ),
          GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.5),
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(
              20,
              (index) => product(
                context,
                'Item ' + (index + 1).toString(),
                'Amora',
                ((index + 1) * 10000).toString(),
                'https://via.placeholder.com/150',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
