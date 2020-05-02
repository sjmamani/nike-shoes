import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

import 'package:shoes/src/models/shoe_model.dart';
import 'package:shoes/src/widgets/index.dart';
import 'package:shoes/src/helpers/helpers.dart';

class ShoeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    changeStatusToLight();
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(tag: 'shoe-1', child: ShoePreview(fullScreen: true)),
              Positioned(
                top: 50.0,
                left: 10,
                child: FloatingActionButton(
                  onPressed: () {
                    changeStatusToDark();
                    Navigator.pop(context);
                  },
                  backgroundColor: Colors.transparent,
                  child:
                      Icon(Icons.chevron_left, color: Colors.white, size: 60),
                  elevation: 0,
                  splashColor: Colors.transparent,
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _AmountBuyNow(),
                  _Colores(),
                  _Options()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _Option(Icon(Icons.favorite, color: Colors.red)),
          _Option(Icon(Icons.shopping_cart, color: Colors.grey)),
          _Option(Icon(Icons.settings, color: Colors.grey)),
        ],
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final Icon icon;
  const _Option(
    this.icon,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: -5,
              blurRadius: 20.0,
            )
          ]),
      child: icon,
    );
  }
}

class _Colores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                    left: 90,
                    child: _Color(
                        Color(0xFFCDDD36), 1, 'assets/images/verde.png')),
                Positioned(
                    left: 60,
                    child: _Color(
                        Color(0xFFFBB500), 2, 'assets/images/amarillo.png')),
                Positioned(
                    left: 30,
                    child:
                        _Color(Color(0xFF43A4FA), 3, 'assets/images/azul.png')),
                _Color(Color(0xFF42545C), 4, 'assets/images/negro.png'),
              ],
            ),
          ),
          // Spacer(),
          OrangeButton(
            text: 'More related items',
            height: 30.0,
            width: 170.0,
          )
        ],
      ),
    );
  }
}

class _Color extends StatelessWidget {
  final Color color;
  final int index;
  final String urlShoe;

  const _Color(this.color, this.index, this.urlShoe);
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 200),
      duration: Duration(milliseconds: 400),
      child: GestureDetector(
        onTap: () {
          Provider.of<ShoeModel>(context, listen: false).url = urlShoe;
        },
        child: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class _AmountBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Row(
          children: <Widget>[
            Text(
              '\$180.0',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Bounce(
              delay: Duration(milliseconds: 500),
              from: 25,
              child: OrangeButton(
                text: 'Buy now',
                height: 40,
                width: 120,
              ),
            )
          ],
        ),
      ),
    );
  }
}
