import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var name = "";
  bool changebtn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_img.png"),
            SizedBox(height: 10),
            Text("Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () async {
                      setState((){
                        changebtn = true;
                      });
                      await Future.delayed(Duration(seconds:1));
                      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    },
                    child: AnimatedContainer(
                      width: changebtn?50:160,
                      height: 50,
                      duration: Duration(seconds: 1),
                      child: changebtn?Icon(Icons.done, color: Colors.white):Text("Sign In",style: TextStyle(color: Colors.white, fontSize: 18)),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changebtn?25:8)
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  //   },
                  //   child: Text("Sign In"),
                  //   style: TextButton.styleFrom(
                  //       minimumSize: Size(160, 50),
                  //       backgroundColor: Colors.deepPurple),
                  // ),
                ],
              ),
            )
          ],
        ));
  }
}
