import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lost_found/tabs/home_page.dart';
import 'tabs/chat_home_page.dart';
import 'tabs/findpost_page.dart';
import 'tabs/lostpost_page.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(child:_currentindex==0? HomePage():_currentindex==1?FindPostPage():_currentindex==2?LostPostPage():ChatHomePage()),
    ]
            ),
          ],
        ),
      ),
bottomNavigationBar: Theme(
  data: Theme.of(context).copyWith(
    
    canvasColor: Color(0xff14213D),
    textTheme: Theme.of(context).textTheme.copyWith(
        caption: TextStyle(
            color: Color(0xffFFC107)))
  ),
  child:   BottomNavigationBar(
    onTap: (int value){
      print(value);
      setState(() {
        _currentindex=value;
      });
    },
    currentIndex: _currentindex,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home,
        color: _currentindex==0?Color(0xffFFC107):Colors.white),
        title: Text('Home',
          style: TextStyle(
              color: _currentindex==0?Color(0xffFFC107):Colors.white),),

      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.smile,
            color: _currentindex==1?Color(0xffFFC107):Colors.white),
        title: Text('Found',
          style: TextStyle(
              color: _currentindex==1?Color(0xffFFC107):Colors.white),),
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.sadCry,
            color: _currentindex==2?Color(0xffFFC107):Colors.white),
        title: Text('Lost',
        style: TextStyle(
            color: _currentindex==2?Color(0xffFFC107):Colors.white), ),
  
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat_bubble,
            color: _currentindex==3?Color(0xffFFC107):Colors.white),
        title: Text('Chat',
          style: TextStyle(
              color: _currentindex==3?Color(0xffFFC107):Colors.white),),
      ),


    ],
  
  ),
),
    );
  }
}
