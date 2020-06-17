import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:kadoqu/utils/constants.dart';

final List<String> imageList = [
  'https://ik.imagekit.io/nwiq66cx3pvsy/Landing_Page/carousel-01.png',
  'https://ik.imagekit.io/nwiq66cx3pvsy/Landing_Page/carousel-01.png',
  'https://ik.imagekit.io/nwiq66cx3pvsy/Landing_Page/carousel-01.png'
];

final List<String> imageList2 = [
  "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
  "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
];

Widget footerText(String name) => Container(
      padding: EdgeInsets.all(5),
      child: Text(
        name,
        style: TextStyle(
          color: DARK_GREEN,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

class Home extends StatelessWidget {
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
          GFCarousel(
            items: imageList
                .map(
                  (url) => Container(
                    child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
                  ),
                )
                .toList(),
            // onPageChanged: (index) {
            //   setState(() {
            //     index;
            //   });
            // },
            pagination: true,
            viewportFraction: 1.0,
            autoPlay: true,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: SvgPicture.network(
                    'https://ik.imagekit.io/nwiq66cx3pvsy/Landing_Page/mama-gida.svg',
                    width: 150,
                    placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const CircularProgressIndicator(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Mama GIdA ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: GREEN,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'bisa tau kado apa yang dicari',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Saya perlu kado buat ',
                          ),
                          Container(
                            height: 15,
                            width: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'untuk acara ',
                          ),
                          Container(
                            height: 15,
                            width: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Text(
                            '. Dia itu',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'orangnya ',
                          ),
                          Container(
                            height: 15,
                            width: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Container(
                            height: 15,
                            width: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Container(
                            height: 15,
                            width: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Kasih kado apa ya, '),
                          Text(
                            'Mama GIdA',
                            style: TextStyle(color: GREEN),
                          ),
                          Text('?'),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {},
                        textColor: Colors.white,
                        color: GREEN,
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Tanya Mama",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://ik.imagekit.io/nwiq66cx3pvsy/_DES___MOB__Tombol_GIdA_1_.png',
                    width: 190,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        'https://ik.imagekit.io/nwiq66cx3pvsy/Landing_Page/banner-1001-inspirasi-kado.png',
                        width: 190,
                      ),
                      Image.network(
                        'https://ik.imagekit.io/nwiq66cx3pvsy/_DES___MOB__Tombol_Kadoqu_Holiday.png',
                        width: 190,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https://ik.imagekit.io/nwiq66cx3pvsy/_DES___MOB__Tombol_Company_Celebration.png',
                  width: 120,
                ),
                Image.network(
                  'https://ik.imagekit.io/nwiq66cx3pvsy/_DES___MOB__Tombol_Magical_Moment.png',
                  width: 120,
                ),
                Image.network(
                  'https://ik.imagekit.io/nwiq66cx3pvsy/_DES___MOB__Tombol_Kids_Party.png',
                  width: 120,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Center(
              child: Text(
                'OUR SATISFIED CUSTOMER',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GFCarousel(
            items: imageList2
                .map(
                  (url) => Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                )
                .toList(),
            height: 120,
            pagination: true,
            viewportFraction: 0.25,
            autoPlay: true,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Center(
              child: Text(
                'PARTNER KAMI',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GFCarousel(
            items: imageList2
                .map(
                  (url) => Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                )
                .toList(),
            height: 120,
            pagination: true,
            viewportFraction: 0.25,
            autoPlay: true,
          ),
          Container(
            color: LIGHT_GREEN,
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: Column(
              children: [
                footerText('About Us'),
                Divider(
                  color: DARK_GREEN,
                  thickness: 1,
                ),
                footerText('Karir'),
                Divider(
                  color: DARK_GREEN,
                  thickness: 1,
                ),
                footerText('Back To Top'),
                Divider(
                  color: DARK_GREEN,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        'https://ik.imagekit.io/nwiq66cx3pvsy/iconfb.jpg',
                        width: 35,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        'https://ik.imagekit.io/nwiq66cx3pvsy/iconig.jpg',
                        width: 35,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        'https://ik.imagekit.io/nwiq66cx3pvsy/iconwa.jpg',
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
