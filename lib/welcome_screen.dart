import 'package:flutter/material.dart';
import 'resource/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 48.0,
              ),
              RoundedButton(
                color: Colors.lightBlueAccent,
                title: 'Log In',
                onPressedInput: () {
                  Navigator.pushNamed(context, 'login_screen');
                },
              ),
              RoundedButton(
                color: Colors.blueAccent,
                title: 'Register',
                onPressedInput: () {
                  Navigator.pushNamed(context, 'regis_screen');
                },
              ),
            ],
          ),
        ));
  }
}
