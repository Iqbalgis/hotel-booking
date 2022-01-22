import 'package:flutter/material.dart';
import 'package:new_one/model/hotel_model.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
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
                      child: Stack(
                        children: [
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
                                          "The Lux Hotel",
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            // margin: EdgeInsets.only(right: 16),
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
                                            child: Text(
                                              'Per Malam',
                                              style: GoogleFonts.poppins(
                                                color: "BDBDBD".toColor(),
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
