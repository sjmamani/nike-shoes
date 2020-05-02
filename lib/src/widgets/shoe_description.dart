import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title;
  final String description;

  const ShoeDescription({@required this.title, @required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            description,
            style: TextStyle(color: Colors.black54, height: 1.6),
          )
        ],
      ),
    );
  }
}
