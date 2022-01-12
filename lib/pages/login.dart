import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset("assets/images/login_img.png"),
        SizedBox(height:10),
        Text("Sign In", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal:80.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username"
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password"
                ),
              ),
              SizedBox(height:30),
              ElevatedButton(
                onPressed: (){
                  print("Working");
                  },
                child: Text("Sign In"),
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                ),
            ],
          ),
        )
      ],)
    );
  }
}