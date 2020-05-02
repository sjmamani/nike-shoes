import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shoes/src/models/shoe_model.dart';
import 'package:shoes/src/pages/shoes_page.dart';

void main() => runApp(
    ChangeNotifierProvider(create: (_) => new ShoeModel(), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoes App',
        home: ShoesPage());
  }
}
