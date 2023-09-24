import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  late final Color color;
  final String title;
  final Function onPressedInput;
  RoundedButton(
      {required this.color, required this.title, required this.onPressedInput});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressedInput(),
          //Go to login screen.
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}