import 'package:flutter/material.dart';
class RoundButton extends StatefulWidget {
  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
    );
  }
}
