import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common_widgets/custom_raised_buttom.dart';
import 'package:flutter_app/screens/detail.dart';

class ListButton extends CustomRaisedButtom{
  ListButton({
    String assetName,
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) :  assert(assetName != null),
        assert(text != null),
        super(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(assetName),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 15.0),
            ),
            Opacity(
                opacity: 0.0,
                child: Image.asset(assetName)
            ),
          ],
        ),
        color: color,
        height: 60.0,
        onPressed: onPressed,

      );

}

class ListButton2 extends CustomRaisedButtom2{

  ListButton2({
    String assetName,
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
    onTap
  }) :  assert(assetName != null),
        assert(text != null),
        super(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(assetName),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 15.0),
            ),
            Opacity(
                opacity: 0.0,
                child: Image.asset(assetName)
            ),
          ],
        ),
        color: color,
        height: 60.0,
        onPressed: onPressed,

      );

}