import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://ptechapp-5ab6d15ba23c.herokuapp.com';

  // Sign Up Method
  Future<http.Response> registerUser(String username, String password, String email, String firstname, String lastname) async {
    final response = await http.post(
        Uri.parse('$baseUrl/user/register'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'username': email.split('@')[0],
          'password': password,
          'email': email,
          'firstname': firstname,
          'lastname': lastname,
          'language': 'en',
        }),
      );
    return response;
  }

  // Login Method
  Future<http.Response> loginUser(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/user/authenticate'),
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    return response;
  }
}
