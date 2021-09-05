import 'package:flutter/material.dart';
import 'package:mypocket/constant/color_constant.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mySecondary,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/logo.png'),
            height: 214,
          ),
          Text(
            'MyPocket',
            style:
                TextStyle(fontSize: 32, color: myPrimary, fontFamily: 'Cream'),
          )
        ],
      )),
    );
  }
}
