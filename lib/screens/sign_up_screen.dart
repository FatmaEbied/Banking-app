import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:task3/services/api_service.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> registerUser(String email, String password, String firstName,
      String lastName, BuildContext context) async {
    final url =
        Uri.parse('https://ptechapp-5ab6d15ba23c.herokuapp.com/user/register');

    try {
      final response = await ApiService().registerUser(
          email.split('@')[0], password, email, firstName, lastName);
      print("RESPONSE__CODE ${response.statusCode} ");
      if (response.statusCode == 200) {
        print("RESPONSE__ ${response.body} ");
        print("RESPONSE__ ${response.body.runtimeType} ");
        final responseData = jsonDecode(response.body);
        print("RESPONSE__DATA : ${responseData.runtimeType}");
        print("RESPONSE__DATA :  $responseData");
        if (responseData['success']) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('isLoggedIn', true);
          Navigator.pushReplacementNamed(context, 'navigation_bar', arguments: firstNameController.value);
        } else if (!responseData['success']) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:
                    Text('Registration failed:-\n${responseData['message']}')),
          );
        }
      } else {
        throw Exception('Registration failed: ${response.body}');
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration failed: ${e.toString()}')),
      );
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
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: firstNameController,
                    decoration: const InputDecoration(
                      labelText: "First Name",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: lastNameController,
                    decoration: const InputDecoration(
                      labelText: "Last Name",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
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
                        return 'Please enter a password';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Confirm Password",
                    ),
                    validator: (value) {
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          registerUser(
                              emailController.text,
                              passwordController.text,
                              firstNameController.text,
                              lastNameController.text,
                              context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        backgroundColor: Color.fromARGB(255, 61, 59, 173),
                        minimumSize: const Size(170, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
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
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account? '),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'login');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
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
