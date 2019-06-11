import 'package:flutter/material.dart';
import 'screens/login_signup_page.dart';
import 'screens/homePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Co-creación',
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/second': (context) => IntroPageView(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: LoginPage(),

    );

  }
}
