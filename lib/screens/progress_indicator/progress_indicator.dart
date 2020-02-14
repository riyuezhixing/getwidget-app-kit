import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';
import 'package:getflutter/components/progress_indicator/progress_bar.dart';
import 'package:getflutter/components/progress_indicator/circular.dart';


class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.SUCCESS,
            ),
          ),
          title: const Text(
            'Progress Bar',
            style: TextStyle(fontSize: 17),
          ), centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[

            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: GFTypography(
                text: 'Linear Progress Bars',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: GFProgressBar(
                percentage: 0.8,
                radius: 70,
                lineHeight: 20.0,
                alignment: MainAxisAlignment.spaceBetween,

                child:  Text(
                  "80%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 16.0, color: Colors.white),
                ),
//                trailing: Icon(Icons.mood),
//                leading: Icon(Icons.message),

                backgroundColor: Colors.black26,
                type: GFProgressType.linear,
                progressBarColor: Colors.green,
                animation: true,
                animationDuration: 3000,
//                headType: GFProgressHeadType.square,
//                progressHeadType: GFProgressHeadType.square,
//                linearStrokeCap: LinearStrokeCap.round,
                progressHeadType: GFProgressHeadType.square,
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: GFProgressBar(
                percentage: 1,
                radius: 70,
                lineHeight: 20.0,
                alignment: MainAxisAlignment.spaceBetween,

                child:  Padding(padding: EdgeInsets.only(right: 5), child: Text(
                  "100%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 16.0, color: Colors.white),
                ),),
//                trailing: Icon(Icons.mood),
//                leading: Icon(Icons.message),
//                progressHeadType: GFProgressHeadType.circular,
                linearStrokeCap: LinearStrokeCap.butt,
                backgroundColor: Colors.black,
                type: GFProgressType.linear,
                progressBarColor: Colors.red,
                animation: true,
                animationDuration: 3000,
              ),
            ),



            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 50),
              child: GFTypography(
                text: 'Circular Progress Bars',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            Container(
//              height: 120,
//              width: 300,
//            margin: EdgeInsets.only(top:20),
              child: GFProgressBar(
                width: 300,
              alignment: MainAxisAlignment.spaceBetween,

radius: 90,
                percentage: 0.5,
                lineHeight: 20.0,
circleWidth: 10,

                child: Text(
                  "50%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 18.0,),
                ),
//                linearBarType: LinearBarType.roundAll,
                backgroundColor: Colors.black26,
                type: GFProgressType.round,
                progressBarColor: Colors.purple,
//headType:GFProgressHeadType.circular,
                animation: true,
                animationDuration: 3000,
                progressHeadType: GFProgressHeadType.square,
              ),
            ),


            Container(
//              height: 120,
//              width: 300,
            margin: EdgeInsets.only(top:80),
              child: GFProgressBar(
                width: 100,
                circleStartAngle: 20,

                alignment: MainAxisAlignment.spaceBetween,

                radius: 90,
                percentage: 0.6,
                lineHeight: 20.0,
                circleWidth: 10,

                child: Text(
                  "60%", textAlign: TextAlign.end,
                  style:  TextStyle(fontSize: 18.0),
                ),
//                linearBarType: LinearBarType.roundAll,
                backgroundColor: Colors.black26,
                type: GFProgressType.round,
                progressBarColor: Colors.teal,
                progressHeadType: GFProgressHeadType.circular,

                animation: true,
                animationDuration: 3000,

              ),
            ),
          ],
        ),
      );
}
