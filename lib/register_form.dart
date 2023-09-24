import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'resource/rounded_button.dart';

const kTextField = InputDecoration(
    hintText: 'Enter your email',
    hintStyle: TextStyle(color: Colors.grey),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0))));

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
