import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lost_found/report_pages/find_page.dart';
import 'package:lost_found/report_pages/lost_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left:20.0,right:20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.0,
              ),
              Text(
                'Hello,',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 35.0,
                    color: Colors.black,
                ),
              ),
          Text(
            'David',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 45.0,
                color: Colors.black,

            ),
          ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LostPage(),
                        ),
                      );
                    },
                    child: Container(
                       height: 150,
                        width: 180,

                      decoration: BoxDecoration(
                          color: Color(0xff14213D),
                          shape: BoxShape.rectangle,
                        borderRadius:BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Lost ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            Text('something !',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 25.0,
                                color: Color(0xffC3BCBC),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FindPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 150,
                      width: 180,

                      decoration: BoxDecoration(
                        color: Color(0xffFFC107),
                        shape: BoxShape.rectangle,
                        borderRadius:BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Found ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 30.0,
                                color: Colors.black,
                              ),
                            ),
                            Text('something !',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 25.0,
                                color: Color(0xffC3BCBC),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],

              ),
              SizedBox(height: 5.0,),
              Container(
                height: 400.0,
                width: double.infinity,
                  child: Image.asset('images/homepg.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}
