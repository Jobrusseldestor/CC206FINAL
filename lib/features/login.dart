// ignore_for_file: file_names

import 'dart:ui';

import 'package:cc206_chatbot_application/features/signup.dart';
import 'package:flutter/material.dart';
import 'package:cc206_chatbot_application/features/home_page.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/minimal.jpg'), 
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
          
          body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const SizedBox(height: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo2.png',
                    height: 300.0,
                    width: 300.0,
                  ),
                  const SizedBox(width: 20.0),
                  const Text(
                    'AmbatuHelp',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Your Friendly AI Chatbot',
                    style: TextStyle(
                      fontSize: 15.0,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatDetailPage()),
              );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(156, 134, 115, 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                
                child: const SizedBox(
                  height: 40.0,
                  width: 100.0,
                  child: Center(
                    child: Text('Sign In'),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
              );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: const Text("Don't have an Account? Sign Up", style: TextStyle(decoration: TextDecoration.underline, ),),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ), // existing Login page code
        ),
      ),
      ),
    );
  }
}