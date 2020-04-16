import 'package:flutter/material.dart';
import 'package:pageview_builder/getting_started_screen.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'Hero',
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

    final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          elevation: 0.0,
          child: MaterialButton(
            minWidth: 150,
            height: 42.0,
            onPressed: (){},
            color: Colors.lightBlueAccent,
            child: Text('Login',style: TextStyle(color: Colors.white),),
          ),
        ),
    );



    final forgotLabel = FlatButton(onPressed: (){}, child: Text('Forgot password?',style: TextStyle(color: Colors.black54),));

    final backButton = Padding(
      padding: EdgeInsets.all(16.0),
      child: RawMaterialButton(
        child: new Icon(Icons.arrow_back,color: Colors.white,size: 55.0,),
        shape: new CircleBorder(),
        elevation: 2.0,
        fillColor: Theme.of(context).primaryColor, onPressed: ()=>Navigator.of(context).push( MaterialPageRoute(builder: (context)=>GettingStartedScreen())),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0),
          children: <Widget>[
            SizedBox(height: 8.0,),
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            backButton,
          ],
        ),
      ),
    );
  }
}
