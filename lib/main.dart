import 'package:bcrypt_app/app/home_controller.dart';
import 'package:flutter/material.dart';
import 'app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage()
    );
  }
}
