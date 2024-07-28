import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nationsapp/features/login/ui/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 6), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ));
    });
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,  
        automaticallyImplyLeading : false, 
      //s  title: const Text('Nations App',style: TextStyle(color: Colors.purple),),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset('images/nationsIcon.png', fit: BoxFit.fitHeight,),
          ),
          DefaultTextStyle(
  style: const TextStyle(
    fontSize: 40.0,
    color: Colors.purple
  ),
  child: AnimatedTextKit(
    animatedTexts: [
      WavyAnimatedText('Nations App'),
    ],
    isRepeatingAnimation: true,
    onTap: () {
      print("Tap Event");
    },
  ),
)
        ],
      ),
    );
  }
}
