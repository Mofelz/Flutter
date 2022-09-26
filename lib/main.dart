
import 'package:flutter/material.dart';
import 'package:kakto/SecretsofAtlantis.dart';
import 'package:kakto/Medinow.dart';

import 'MindDeepRelax.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Ya zaebalsya verstat', 
        home: const Medinow(),
      );
  }
}

