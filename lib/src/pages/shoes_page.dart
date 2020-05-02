import 'package:flutter/material.dart';
import 'package:shoes/src/widgets/index.dart';
import 'package:shoes/src/helpers/helpers.dart';

class ShoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    changeStatusToDark();
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(text: 'For you'),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Hero(tag: 'shoe-1', child: ShoePreview()),
                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
          ),
          AddToCartButton(amount: 180.0)
        ],
      ),
    );
  }
}
