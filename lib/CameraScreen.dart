import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120),
      child: Opacity(
        opacity: 0.7,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)),
            color: Colors.black,
          ),

          height: 420,
          width: 190,

        ),
      ),
    );
  }
}
