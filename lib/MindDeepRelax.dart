 import 'dart:html';

import 'package:flutter/material.dart';

class MindDeepRelax extends StatefulWidget {
  const MindDeepRelax({Key? key}) : super(key: key);

  @override
  State<MindDeepRelax> createState() => _MindDeepRelaxState();
}

class _MindDeepRelaxState extends State<MindDeepRelax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
            Stack(
              children: [
                Container(
                  child: const Image(
                  image: AssetImage('Image.png'),
                  width: 341,
                  height: 231,
                  ),
                  margin: EdgeInsets.fromLTRB(75, 53, 0, 0),
                ),
                Container(
                  child: const Image(
                  image: AssetImage('Frame23.png'),
                  width: 341,
                  height: 231,
                  ),
                  margin: EdgeInsets.fromLTRB(75, 53, 0, 0),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(75, 290, 0, 0),
                  child: Text(
                  'Peter Mach',
                  style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  fontFamily: 'PlusJakartaSans'),
                    ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(75, 310, 0, 0),
                  child: Text(
                  'Mind Deep Relax',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'PlusJakartaSans'),
                  ),
                ),
        Container(
          margin: EdgeInsets.fromLTRB(75, 340, 100, 0),
          child: Text(
            'Join the Community as we prepare over 33'
            'days to relax and feel joy with the mind'
            'and happnies session across the World.',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                fontFamily: 'PlusJakartaSans'),
          ),
        ),
        
        Container(
            margin: EdgeInsets.fromLTRB(160, 405, 0, 0),
            child: ElevatedButton(
                onPressed: () => {},
               style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(3, 158, 162, 1),
                  // backgroundColor: Colors.white,
                  // foregroundColor: Colors.black,
                  
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
                child: const Text(
                  '     Play Next Session',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                )
              )
            ),
            Container(
           child: const Image(
                  image: AssetImage('shape.png'),
                  // width: 341,
                  // height: 231,
                  ),
                  margin: EdgeInsets.fromLTRB(178, 419, 0, 0),
          ),


            Container(
                  child: const Image(
                    image: AssetImage('Group2.png'),
                  ),
                  margin: EdgeInsets.fromLTRB(75, 465, 0, 0),
                ),
            Container(
              child: Text('Sweet Memories', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                fontFamily: 'PlusJakartaSans'
                ),
              ),
              margin: EdgeInsets.fromLTRB(135, 467, 0, 0),
            ),
            Container(
              child: Text('December 29 Pre-Launch', 
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontFamily: 'PlusJakartaSans'
                ),
              ),
              margin: EdgeInsets.fromLTRB(135, 490, 0, 0),
            ),
            Container(
                  child: const Image(
                    image: AssetImage('Group3.png'),
                  ),
                  margin: EdgeInsets.fromLTRB(375, 485, 0, 0),
            ),




             Container(
                  child: const Image(
                    image: AssetImage('Group4.png'),
                  ),
                  margin: EdgeInsets.fromLTRB(75, 515, 0, 0),
                ),
            Container(
              child: Text('A Day Dream', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                fontFamily: 'PlusJakartaSans'
                ),
              ),
              margin: EdgeInsets.fromLTRB(135, 517, 0, 0),
            ),
            Container(
              child: Text('December 29 Pre-Launch', 
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontFamily: 'PlusJakartaSans'
                ),
              ),
              margin: EdgeInsets.fromLTRB(135, 537, 0, 0),
            ),
            Container(
                  child: const Image(
                    image: AssetImage('Group3.png'),
                  ),
                  margin: EdgeInsets.fromLTRB(375, 535, 0, 0),
            ),




             Container(
                  child: const Image(
                    image: AssetImage('Group5.png'),
                  ),
                  margin: EdgeInsets.fromLTRB(75, 565, 0, 0),
                ),
            Container(
              child: Text('Mind Explore', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                fontFamily: 'PlusJakartaSans'
                ),
              ),
              margin: EdgeInsets.fromLTRB(135, 567, 0, 0),
            ),
            Container(
              child: Text('December 29 Pre-Launch', 
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontFamily: 'PlusJakartaSans'
                ),
              ),
              margin: EdgeInsets.fromLTRB(135, 587, 0, 0),
            ),
            Container(
                  child: const Image(
                    image: AssetImage('Group3.png'),
                  ),
                  margin: EdgeInsets.fromLTRB(375, 585, 0, 0),
                ),
              ]
            )
          ]
        )
      )  
    );
  }
}