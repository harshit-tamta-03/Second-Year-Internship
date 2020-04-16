import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageview_builder/login_screen.dart';
import 'package:pageview_builder/signup_screen.dart';
import 'package:pageview_builder/slide.dart';
import 'package:pageview_builder/slide_item.dart';
import 'package:pageview_builder/slide_dots.dart';

class GettingStartedScreen extends StatefulWidget {
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState(){
    super.initState();
    Timer.periodic(  Duration(seconds: 5), (Timer timer){
      if ( _currentPage < 2){ _currentPage++; }else{ _currentPage = 0;}
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }
  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }
  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemBuilder:(ctx, i)=>SlideItem(i),
                      itemCount: SlideList.length),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 35),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for(int i=0; i<SlideList.length;i++)
                              if(i==_currentPage)
                                SlideDots(true)
                              else
                                SlideDots(false)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    onPressed: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>SignUpPage())),
                    child: Text("Getting Started"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(15),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}


