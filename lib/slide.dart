import 'package:flutter/material.dart';

class Slide{
  final String imageurl;
  final String title;
  final String description;

  Slide({
    @required this.imageurl, 
    @required  this.title,
    @required this.description,
  });
}

final SlideList = [
  Slide(
    imageurl: 'assets/images/image1.png',
    title: 'A Cool Way to Get Start' ,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  Slide(
    imageurl: 'assets/images/image2.png',
    title:'Design Interactive App UI' ,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  Slide(
    imageurl: 'assets/images/image3.png',
    title:'It\'s Just The Begining ',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
];

