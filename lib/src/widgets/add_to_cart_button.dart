import 'package:flutter/material.dart';
import 'package:shoes/src/widgets/orange_button.dart';

class AddToCartButton extends StatelessWidget {
  final double amount;
  const AddToCartButton({this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 85.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(100.0)),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20.0,
            ),
            Text(
              '\$$amount',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            OrangeButton(
              text: 'Add to cart',
            ),
            SizedBox(
              width: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
