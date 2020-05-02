import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  OrangeButton(
      {@required this.text,
      this.width = 150.0,
      this.height = 50.0,
      this.color = Colors.orange});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(100.0)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
