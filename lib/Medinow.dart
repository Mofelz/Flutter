import 'dart:html';

import 'package:flutter/material.dart';

class Medinow extends StatefulWidget {
  const Medinow({Key? key}) : super(key: key);

  @override
  State<Medinow> createState() => _MedinowState();
}

class _MedinowState extends State<Medinow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        backgroundColor: Color.fromRGBO(3, 158, 162, 1),
          body: Center(
            child: Column(
              children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 129, 0, 0),
                         child: Container(
                              alignment: Alignment.center,
                                child: Text('medinow',
                                    textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                         child: Container(
                              alignment: Alignment.center,
                                child: Text('Meditate with us',
                                    textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                    Padding(padding: EdgeInsets.fromLTRB(100, 59, 100, 0),
         child:  Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              ElevatedButton(
               onPressed: () => {},
                style: ElevatedButton.styleFrom(primary: Colors.white,
                   padding: const EdgeInsets.all(14),
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))
                ),

                                child: Text('Sigh in with Apple',
                                   textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.black,
                                ),
                              )

                            )
                          ],
                        ),
                      ),
                    Padding(padding: EdgeInsets.fromLTRB(100, 12, 100, 0),
                         child:  Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                              ElevatedButton(
                                onPressed: () => {},
                                  style: ElevatedButton.styleFrom(primary: Color.fromRGBO(205, 253, 254, 1),
                                  padding: const EdgeInsets.all(14),
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))
                                 ),
                                
                                child: Text('Continue with Email or Phone',
                                   textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.black,
                                ),
                              )
                            )
                          ]
                        ),
                      ),
                    
                   Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                         child:  Column(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              InkWell(
        onTap: () {},
        child: Text('Continue with Google',
           textDirection: TextDirection.ltr,
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              color: Colors.white,
                                ),
                              )
                            )
                          ]
                        ),
                      ),
                      Image(image:  AssetImage('image3.png'), width: 430,height: 350,),
          ]
        ) 
      )
    );
  }
}