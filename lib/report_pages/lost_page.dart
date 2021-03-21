import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import '../tabs/findpost_page.dart';
class LostPage extends StatefulWidget {
  @override
  _LostPageState createState() => _LostPageState();
}

class _LostPageState extends State<LostPage> {
  DateTime _selectedDate;
  String selectedcategory=" ";
  List<String> categoryList=[
    'Electronics',
    'ATM cards/ Wallets',
    'Ornamental Goods',
    'Keys and ID',
    'Other',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left:20.0,right: 20.0),
        child: Container(
          width: double.infinity,
         height: double.infinity,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(
               height: 60.0,
             ),
             Text(
               'Lost Report',
               style: GoogleFonts.montserrat(
                 fontWeight: FontWeight.w500,
                 color: Color(0xff000000),
                 fontSize: 40.0,
               ),
             ),
             SizedBox(
               height: 30.0,
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0),
               child: Text(
                 'Category',
                 style: GoogleFonts.montserrat(
                   fontWeight: FontWeight.w400,
                   color: Color(0xff000000),
                   fontSize: 20.0,
                 ),

               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0,top: 5.0),
               child: GestureDetector( child: Container(
                 height: 45.0,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Color(0x90FFC107),
                   borderRadius:BorderRadius.all(Radius.circular(10.0)),
                 ),
                 child: Padding(
                   padding:  EdgeInsets.all(10.0),
                   child: Text(
                     '$selectedcategory',
                       style: TextStyle(
                           fontWeight: FontWeight.w300,
                           color: Colors.black87,
                           fontSize: 20.0
                       ),
                     textAlign: TextAlign.center,
                   ),
                 ),
               ),
                 onTap: (){

                     showModalBottomSheet(
                         context: context,
                         builder: (BuildContext context) {
                           return Container(
                             height: MediaQuery.of(context).copyWith().size.height / 3,
                             child: CupertinoPicker(
                               backgroundColor: Colors.white,
                               onSelectedItemChanged: (value) {
                                 setState(() {
                                   selectedcategory = categoryList[value];
                                 });
                               },
                               itemExtent: 32.0,

                               children: const [
                                 Text('Electronics'),
                                 Text('ATM cards/Wallet'),
                                 Text('Ornamental Goods'),
                                 Text('Keys/ID cards'),
                                 Text('Other'),

                               ],
                             ),
                           );
                         });

                 },
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
               child: Text(
                 'Item Name',
                 style: GoogleFonts.montserrat(
                   fontWeight: FontWeight.w400,
                   color: Color(0xff000000),
                   fontSize: 20.0,
                 ),
                 textAlign: TextAlign.start,
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0,top: 5.0),
               child: Container(
                 height: 45.0,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Color(0x90FFC107),
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
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Text(
                         'Date',
                         style: GoogleFonts.montserrat(
                           fontWeight: FontWeight.w400,
                           color: Color(0xff000000),
                           fontSize: 20.0,
                         ),

                       ),
                       SizedBox(
                         height: 5.0,
                       ),
                       GestureDetector(
                         child: Container(
                           height: 45.0,
                           width: 100.0,
                           decoration: BoxDecoration(
                             color: Color(0x90FFC107),
                             borderRadius:BorderRadius.all(Radius.circular(10.0)),
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Text(
                               _selectedDate == null //ternary expression to check if date is null
                                   ? 'No date chosen!'
                                   : ' ${DateFormat.yMMMd().format(_selectedDate)}',
                               style:TextStyle(
                                   fontWeight: FontWeight.w300,
                                   color: Colors.black87,
                                   fontSize: 15.0
                               ),
                               textAlign: TextAlign.center,

                             ),
                           ),
                         ),

                         onTap:  () {
                        //    showDatePicker(
                        //
                        //        context: context,
                        //        initialDate: DateTime.now(),
                        //        //which date will display when user open the picker
                        //        firstDate: DateTime(2020),
                        //        //what will be the previous supported year in picker
                        //        lastDate: DateTime
                        //            .now()) //what will be the up to supported date in picker
                        //        .then((pickedDate) {
                        //      //then usually do the future job
                        //      if (pickedDate == null) {
                        //        //if user tap cancel then this function will stop
                        //        selectedDate=DateTime.now();
                        //      }
                        //      setState(() {
                        //        //for rebuilding the ui
                        //        selectedDate = pickedDate;
                        //      });
                        //    });
                        showModalBottomSheet(
                        context: context,
                        builder: (BuildContext builder) {
                        return Container(
                            height: MediaQuery.of(context).copyWith().size.height / 3,
                          child: CupertinoDatePicker(
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (DateTime newdate) {
                            setState(() {
                              _selectedDate=newdate;
                            });

                          },
                          use24hFormat: true,
                          maximumDate: DateTime.now(),
                          minimumYear: 2020,
                          maximumYear: 2021,

                          mode: CupertinoDatePickerMode.date,
                         ));
                         });
                         },




                       ),
                     ],
                   ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      Row(
                  children: [

                    Text(
                      'Where did you',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      ' lost',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      ' it?',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                 ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        height: 45.0,
                        width: 220.0,
                        decoration: BoxDecoration(
                          color: Color(0x90FFC107),
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
                      ),
                    ]
                  ),
                 ],
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Text(
                         'Brand',
                         style: GoogleFonts.montserrat(
                           fontWeight: FontWeight.w400,
                           color: Color(0xff000000),
                           fontSize: 20.0,
                         ),

                       ),
                       SizedBox(
                         height: 5.0,
                       ),
                       Container(
                         height: 45.0,
                         width: 160.0,
                         decoration: BoxDecoration(
                           color: Color(0x90FFC107),
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
                       ),
                     ],
                   ),
                   SizedBox(
                     width: 20.0,
                   ),
                   Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                               'Color',
                               style: GoogleFonts.montserrat(
                                 fontWeight: FontWeight.w400,
                                 color: Color(0xff000000),
                                 fontSize: 20.0,
                               ),
                               textAlign: TextAlign.start,
                             ),

                         SizedBox(
                           height: 5.0,
                         ),
                         Container(
                           height: 45.0,
                           width: 160.0,
                           decoration: BoxDecoration(
                             color: Color(0x90FFC107),
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
                         ),
                       ]
                   ),
                 ],
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
               child: Text(
                 'Description',
                 style: GoogleFonts.montserrat(
                   fontWeight: FontWeight.w400,
                   color: Color(0xff000000),
                   fontSize: 20.0,
                 ),
                 textAlign: TextAlign.start,
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0,top: 5.0),
               child: Container(
                 height: 90.0,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Color(0x90FFC107),
                   borderRadius:BorderRadius.all(Radius.circular(10.0)),
                 ),
                 child: TextField(
                   maxLength: 100,
                   maxLines: 2,
                   decoration: InputDecoration(
                     enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(
                         color: Color(0xffFFC107),
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
               ),
             ),
             SizedBox(
               height: 10.0,
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20.0,right: 20.0,top: 5.0),
               child: Container(
                 height: 90.0,
                  width: double.infinity,
                 decoration: BoxDecoration(
                   color: Color(0xffF7F8FB),
                   borderRadius:BorderRadius.all(Radius.circular(10.0)),
                 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                 Icons.camera_alt_rounded,
                 size: 60.0,
                 color: Color(0xff3F3D56),
               ),
                      Text('Upload Picture',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(top: 30.0),
               child: GestureDetector(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => FindPostPage(),
                     ),
                   );
                 },
                 child: Container(
                   height: 50.0,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Color(0xff14213D),
                     borderRadius:BorderRadius.all(Radius.circular(15.0)),
                   ),
                   child: Padding(
                     padding:  EdgeInsets.all(8.0),
                     child: Text(
                       'Continue',
                       textAlign: TextAlign.center,
                       style: GoogleFonts.montserrat(
                         fontWeight: FontWeight.w400,
                         fontSize: 30.0,
                         color: Colors.white,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ),
        ),
      ),
    );
  }
}
