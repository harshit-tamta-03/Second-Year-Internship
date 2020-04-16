import 'package:flutter/material.dart';
import 'package:pageview_builder/slide.dart';
class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(SlideList[index].imageurl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 40,),
          Text(SlideList[index].title,style: TextStyle(fontSize: 22,color: Theme.of(context).primaryColor),),
          SizedBox(height: 10,),
          Text(SlideList[index].description,
            textAlign: TextAlign.center,
          ),
        ],
      );
  }
}
