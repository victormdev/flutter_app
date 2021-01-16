import 'package:flutter/material.dart';

class CustomRaisedButtom extends StatelessWidget {
  CustomRaisedButtom({
    this.child,
    this.color,
    this.borderRadius: 4.0,
    this.height,
    this.onPressed
  });
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: RaisedButton(
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            )
        ),
        onPressed: onPressed,
      ),
    );
  }
}
