import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lost_found/widgets/round_button.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.all(30.0),
          child: Column(


            children: [
              SizedBox(
                height: 80.0,
              ),
              Text(
                'Sign Up.',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  fontSize: 45.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'NAME',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  RoundButton(),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'EMAIL',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffC3BCBC),
                      borderRadius:BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black87,
                          fontSize: 20.0
                      ),

                      autofocus: false,
                      cursorColor: Colors.white,
                      textAlign: TextAlign.center,
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                'PASSWORD',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 15.0,
              ),
                  RoundButton(),
              SizedBox(
                height: 20.0,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'PHONE',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    RoundButton(),
              ]),
              SizedBox(
                height: 70.0,
              ),
              Container(
                height: 60.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFFC107),
                  borderRadius:BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do not have an account?',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                      color: Colors.grey,
                    ),
                  ),
                  Text(

                    ' Sign up',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5238BC),
                      fontSize: 20.0,
                    ),
                  ),

                ],
                  ),
          ]
        ),
          ]
      ),
          ]





        ),
      ),
      ),
    );
  }
}
