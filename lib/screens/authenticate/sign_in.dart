
import 'package:abul/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Sign In to Brew Crew"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: RaisedButton(
          child: Text('Sign In Anonymously'),
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if(result == null){
              print("Sign In Error");
            }else{
              print("sign in successfully");
              print(result);
            }

          },
        ),
      ),
    );
  }
}