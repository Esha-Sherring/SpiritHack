import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lost_found/home_screen.dart';
class ChatHomePage extends StatefulWidget {
  @override
  _ChatHomePageState createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.0,
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
            Padding(
              padding:  EdgeInsets.only(left: 20.0),
              child: Text(
                'Chats',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  fontSize: 40.0,
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Container(
              height: 120.0,
              width: double.infinity,
              color: Color(0x90FFC107),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 45.0,
                      backgroundColor: Color(0xffF2F2F2),
                     backgroundImage: AssetImage('images/linkedin.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(
                         height: 20.0,
                       ),
                       Text(
                      'Tanya Agarwal',
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
                      'Hello, I saw your post....',
                      style:GoogleFonts.montserrat(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                     ],
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    FontAwesomeIcons.angleRight,
                    size: 30.0,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            Container(
              height: 120.0,
              width: double.infinity,
              color: Color(0x90E0E0E0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 45.0,
                      backgroundColor: Color(0xffF2F2F2),
                      backgroundImage: AssetImage('images/linkedin.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Tanya Agarwal',
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
                          'Hello, I saw your post....',
                          style:GoogleFonts.montserrat(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    FontAwesomeIcons.angleRight,
                    size: 30.0,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            Container(
              height: 120.0,
              width: double.infinity,
              color: Color(0x90E0E0E0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 45.0,
                      backgroundColor: Color(0xffF2F2F2),
                      backgroundImage: AssetImage('images/linkedin.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Tanya Agarwal',
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
                          'Hello, I saw your post....',
                          style:GoogleFonts.montserrat(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    FontAwesomeIcons.angleRight,
                    size: 30.0,
                    color: Colors.black54,
                  )
                ],
              ),
            ),

          ],
        ),

      ),

    );
  }
}
