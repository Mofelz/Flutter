import 'dart:html';

import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // backgroundColor: Colors.lightBlue,
         body: Center(
           child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: 500,
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                      ),
                    ),     
                    Container(
                      child: const Image(image: AssetImage('image1.png'), height: 350),
                    ),                    
                    Padding(padding:  EdgeInsets.fromLTRB(0, 290, 0, 0),
                      child: Container(
                      child: const Image(image: AssetImage('Vector.png')),
                        )
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(200, 310, 10, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: 
                            DecorationImage(
                              image: Image.asset('Play.png',).image,
                                fit: BoxFit.cover,
                            ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(115, 410, 0, 0),
                      child: Container(
                        child: Text('Secrets of Atlantis',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            fontFamily: ('PlusJakartaSans'))
                        ),
                      )
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(220, 460, 0, 0),
                      child: Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.white,
                              // shape: new CircleBorder(),
                              // fillColor: Colors.deepPurple,
                              
                          ),
                          onPressed: () => {},
                          child: Text('follow',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      )         
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(30, 500, 0, 0),
                       child: Container(
                        child: const Image(image: AssetImage('GroupPurp.png'), width: 250,),
                      )
                    ),
                       Padding(padding: EdgeInsets.fromLTRB(30, 680, 0, 0),
                       child: Container(
                        child: const Image(image: AssetImage('Group99.png'), width: 150,),
                      )
                    )        
              ]
            )
          ]
        )
      )
    );
  }
}