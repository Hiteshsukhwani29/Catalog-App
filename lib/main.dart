import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/login.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Home(),
        "/login": (context) => Login(),
      },
    );
  }
}