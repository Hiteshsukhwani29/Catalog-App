import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, 
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Login(),
        MyRoutes.LoginRoute: (context) => Login(),
        MyRoutes.HomeRoute: (context) => Home(),
      },
    );
  }
}