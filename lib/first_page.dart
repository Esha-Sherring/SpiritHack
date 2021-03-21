import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'package:google_fonts/google_fonts.dart';
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "LIFO",
                    style:GoogleFonts.montserratAlternates (

                      fontWeight: FontWeight.w500,
                      fontSize: 50,
                      color: Color(0xff14213D),
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.5),
                          blurRadius: 10.0,
                          color: Color(0xFFFFC107),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 300.0,
                    child: Image.asset('images/search.jpg'),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      color: Color(0xFFFFC107),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Log In",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                      color: Color(0xFFFFC107),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  }

