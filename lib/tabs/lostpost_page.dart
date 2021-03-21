import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lost_found/home_screen.dart';
class LostPostPage extends StatefulWidget {
  @override
  _LostPostPageState createState() => _LostPostPageState();
}

class _LostPostPageState extends State<LostPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 20.0,right: 20.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Row(
                    children:[
                      IconButton(
                        icon: Icon( FontAwesomeIcons.angleLeft,

                          color: Color(0xff14213D),
                          size: 30.0,),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      ),
                      Text('Home',
                        style: GoogleFonts.montserrat(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff14213D),
                        ),
                      )
                    ]
                ),
                SizedBox(
                  height: 20.0,
                ),
            Text(
              'LOST',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
                Container(
                  height:150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.5, 0.8],
                        colors: [Color(0x95FFC107),Color(0x80FFC107),Color(0xff30FFC107)]
                    ),
                    // color: Color(0x95FFC107),
                    borderRadius:BorderRadius.all(Radius.circular(20.0)),
                ),
                  child: Row(
                    children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: CircleAvatar(
                            radius: 45.0,
                            backgroundColor: Color(0xffF2F2F2),
                            backgroundImage: AssetImage('images/wallet2.jpg'),
                          ),
                        ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Wallet',
                            style:GoogleFonts.montserrat(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'I lost my wallet from \n the photo...',
                            style:GoogleFonts.montserrat(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 100.0),
                                child: Text(
                                  'Alex Brown',
                                  style:GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ],
                      ),


                    ],
                  ),
                  ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height:150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.5, 0.8],
                        colors: [Color(0x95FFC107),Color(0x80FFC107),Color(0xff30FFC107)]
                    ),
                    // color: Color(0x95FFC107),
                    borderRadius:BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundColor: Color(0xffF2F2F2),
                          backgroundImage: AssetImage('images/wallet2.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Wallet',
                            style:GoogleFonts.montserrat(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'I lost my wallet from \n the photo...',
                            style:GoogleFonts.montserrat(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 100.0),
                                child: Text(
                                  'Alex Brown',
                                  style:GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ],
                      ),


                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height:150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.5, 0.8],
                        colors: [Color(0x95FFC107),Color(0x80FFC107),Color(0xff30FFC107)]
                    ),
                    // color: Color(0x95FFC107),
                    borderRadius:BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundColor: Color(0xffF2F2F2),
                          backgroundImage: AssetImage('images/wallet2.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Wallet',
                            style:GoogleFonts.montserrat(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'I lost my wallet from \n the photo...',
                            style:GoogleFonts.montserrat(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 100.0),
                                child: Text(
                                  'Alex Brown',
                                  style:GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ],
                      ),


                    ],
                  ),
                ),

              ]
        ),
          ),
    ),
      )
    );
  }
}
