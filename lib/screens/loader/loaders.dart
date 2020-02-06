import 'package:flutter/material.dart';
import 'package:getflutter/components/loader/gf_loader.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/types/gf_loader_type.dart';

class Loaders extends StatefulWidget {
  @override
  _LoadersState createState() => _LoadersState();
}

class _LoadersState extends State<Loaders> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.getGFColor(GFColor.success),
            ),
          ),
          title: const Text(
            'Loaders',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),

            const GFLoader(
                //  dotIcon: Icon(Icons.insert_emoticon),
//   duration: Duration(seconds: 2),
                ),
            const SizedBox(
              height: 30,
            ),
            GFLoader(
              loaderSizeOne: 20,
              loaderSizeTwo: 15.0,
              loaderSizeThree: 10,
              loaderType: LoaderDotType.square,

//   dotIcon: Icon(Icons.insert_emoticon),

//             duration: Duration(seconds: 3),
            ),
            const SizedBox(
              height: 30,
            ),
            GFLoader(
              loaderSizeOne: 20,
              loaderSizeTwo: 15.0,
              loaderSizeThree: 10,
              loaderType: LoaderDotType.icon,
              loaderIconOne: Icon(Icons.insert_emoticon),
              loaderIconTwo: Icon(Icons.insert_emoticon),
              loaderIconThree: Icon(Icons.email),
//   dotIcon: Icon(Icons.insert_emoticon),

             duration: Duration(seconds: 3),
            ),

          ],
        ),
      );
}
