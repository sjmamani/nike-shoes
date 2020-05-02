import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/src/models/shoe_model.dart';
import 'package:shoes/src/pages/shoe_detail_page.dart';

class ShoePreview extends StatelessWidget {
  final bool fullScreen;

  const ShoePreview({this.fullScreen = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!fullScreen)
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ShoeDetailPage()));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: fullScreen ? 5.0 : 30.0,
            vertical: fullScreen ? 5.0 : 5.0),
        child: Container(
          width: double.infinity,
          height: fullScreen ? 410.0 : 430.0,
          decoration: BoxDecoration(
              color: Color(0xFFFFCF53),
              borderRadius: !fullScreen
                  ? BorderRadius.circular(50.0)
                  : BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )),
          child: Column(
            children: <Widget>[_ShoeWithShadow(), if (!fullScreen) _Tallas()],
          ),
        ),
      ),
    );
  }
}

class _Tallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _Talla(7),
          _Talla(7.5),
          _Talla(8),
          _Talla(8.5),
          _Talla(9),
          _Talla(9.5),
        ],
      ),
    );
  }
}

class _Talla extends StatelessWidget {
  final double number;

  const _Talla(this.number);
  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);
    return GestureDetector(
      onTap: () {
        Provider.of<ShoeModel>(context, listen: false).talla = number;
      },
      child: Container(
        alignment: Alignment.center,
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: number == shoeModel.talla ? Color(0xFFFFA000) : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            if (number == shoeModel.talla)
              BoxShadow(
                  color: Color(0xFFF1A23A),
                  blurRadius: 10.0,
                  offset: Offset(0, 5))
          ],
        ),
        child: Text(
          '${number.toString().replaceAll('.0', '')}',
          style: TextStyle(
              color:
                  number == shoeModel.talla ? Colors.white : Color(0xFFFFCF53),
              fontWeight: FontWeight.bold,
              fontSize: 16.0),
        ),
      ),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final url = Provider.of<ShoeModel>(context).url;
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          Positioned(bottom: 20, right: 0, child: _Shadow()),
          Image(
            image: AssetImage(url),
          )
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230.0,
        height: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [BoxShadow(color: Color(0xFFEAA14E), blurRadius: 40.0)]),
      ),
    );
  }
}
