import 'package:flutter/material.dart';
import 'package:kickstreet/utils/constants.dart';

class TwoRoundedSideButton extends StatelessWidget {
  const TwoRoundedSideButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: colorAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(29),
          bottomRight: Radius.circular(29),
        ),
      ),
      child: Text(
        "Buy",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}