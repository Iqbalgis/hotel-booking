import 'package:flutter/material.dart';
import 'package:new_one/model/hotel_model.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      width: double.infinity,
                      height: size.height * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/hotel.jpeg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Positioned(
                      left: 30,
                      right: 30,
                      bottom: 30,
                      child: Stack(children: [
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        'The Lux Hotel',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 16),
                                          child: Text(
                                            'Rp1000k',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Yogyakarta',
                                        style: GoogleFonts.poppins(
                                          color: "BDBDBD".toColor(),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 16),
                                          child: Text(
                                            'Per Malam',
                                            style: GoogleFonts.poppins(
                                              color: "BDBDBD".toColor(),
                                              fontSize: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, bottom: 3),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fasilitas',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                itemCount: fasilitas.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(fasilitas[index].imageUrl),
                            ),
                            color: 'DED7DA'.toColor(),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          fasilitas[index].name,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: 'BDBDBD'.toColor(),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 16),
              child: Stack(
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: 'F5F5F5'.toColor(),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage('assets/bintang.png'),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '4.8',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text('100 Ulasan'),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder:
                                        (BuildContext contex, int index) {
                                      return Align(
                                        widthFactor: 0.7,
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: '944E6C'.toColor(),
                                                width: 2,
                                                style: BorderStyle.solid),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  ratings[index].imageUrl),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 16,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'The Lux Hotel',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 8,
                bottom: 16,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'LUX Resorts & Hotels is a major luxury hotel operator based in Mauritius which owns or part-owns many of its hotels and runs others under management contracts, which typically involve, in addition to management services, design, operations, sales and marketing.',
                  style: GoogleFonts.poppins(
                    color: "BDBDBD".toColor(),
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: double.infinity,
              height: 55,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Select Room',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: 'FAFAFA'.toColor(),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: '944E6C'.toColor(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
            ),
          )),
    );
  }
}
