import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier {
  String _url = 'assets/images/azul.png';
  double _talla = 9.0;

  String get url => this._url;
  set url(String newUrl) {
    this._url = newUrl;
    notifyListeners();
  }

  double get talla => this._talla;
  set talla(double value) {
    this._talla = value;
    notifyListeners();
  }
}
