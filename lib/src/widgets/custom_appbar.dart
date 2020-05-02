import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;

  const CustomAppBar({this.text});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.search,
              size: 32.0,
            )
          ],
        ),
      ),
    );
  }
}
