import 'package:flutter/cupertino.dart';
import 'package:flutter_app/common_widgets/custom_raised_buttom.dart';

class SocialSignInButton extends CustomRaisedButtom{
  SocialSignInButton({
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
    height: 40.0,
    onPressed: onPressed,

  );

}