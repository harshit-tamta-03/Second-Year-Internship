import 'package:flutter/material.dart';
import 'package:pageview_builder/getting_started_screen.dart';

import 'login_screen.dart';

class SignUpPage extends StatefulWidget {
  static String tag = 'signup-page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {
    final logo = Container(
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/images/logo.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'accountname@email.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final signUpButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 0.0,
        child: MaterialButton(
          minWidth: 150,
          height: 42.0,
          onPressed: (){},
          color: Colors.lightBlueAccent,
          child: Text('SignUp',style: TextStyle(color: Colors.white),),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0),
          children: <Widget>[
            SizedBox(height: 15.0,),
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            signUpButton,
            SizedBox(height: 24.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
               Text(
                "Already have an account?",
                    style: TextStyle(fontSize: 18),
                 ),
            FlatButton(
            onPressed: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>LoginPage(),)),
              child: Text(
                       "Login",
                       style: TextStyle(fontSize: 18),
                      ),
                ),
              ],
              ),
            ],
        ),
      ),
    );
  }
}
