
import 'package:flutter/material.dart';
import 'package:kakto/screen.dart';
import 'package:kakto/screen3.dart';

import 'screen2.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Ya zaebalsya verstat', 
        home: const Screen3(),
      );
  }
}

