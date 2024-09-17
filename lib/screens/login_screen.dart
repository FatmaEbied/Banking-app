import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:task3/services/api_service.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String errorMessage = '';

  // Function to validate email format
  bool isValidEmail(String email) {
    return email.endsWith('@gmail.com') &&
        RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  // Function to login user
  Future<void> loginUser() async {
    if (_formKey.currentState!.validate()) {
      const String baseUrl = 'https://ptechapp-5ab6d15ba23c.herokuapp.com';
      final url = Uri.parse('$baseUrl/user/authenticate');

      try {
        final response = await ApiService()
            .loginUser(emailController.text, passwordController.text);

        if (response.statusCode == 200) {
          // Successfully logged in
          // Parse the response if necessary and navigate to the next screen
          Navigator.pushReplacementNamed(context, 'navigation_bar');
        } else if (response.statusCode == 401) {
          // Invalid credentials
          setState(() {
            errorMessage = 'Invalid email or password.';
          });
        } else {
          // Other error
          setState(() {
            errorMessage = 'Something went wrong. Please try again.';
          });
        }
      } catch (e) {
        // Handle any errors that occur during the request
        setState(() {
          errorMessage =
              'Error connecting to the server. Please try again later.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/cii.png",
                    height: 100,
                    width: 100,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!isValidEmail(value)) {
                        return 'Please enter a valid Gmail address (e.g. yourname@gmail.com)';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 50.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: loginUser,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        backgroundColor: const Color.fromARGB(255, 61, 59, 173),
                        minimumSize: const Size(170, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Display error message if any
                  if (errorMessage.isNotEmpty)
                    Center(
                      child: Text(
                        errorMessage,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  const SizedBox(height: 20.0),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 150, // Set the width to your preference
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width:
                                    50, // You can adjust the size of the container
                                height: 50,
                                padding: EdgeInsets.all(
                                    8), // Optional: Adjust padding
                                child:
                                    Image.asset("assets/images/facebook.png"),
                              ),
                              SizedBox(width: 20.0),
                              Container(
                                width:
                                    50, // Adjust size for the second container as needed
                                height: 50,
                                padding: EdgeInsets.all(
                                    8), // Optional: Adjust padding
                                child: Image.asset("assets/images/search.png"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("You don't have an account? "),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, 'sign_up_screen');
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
