import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService {
  // Base URL pointing to your backend on port 5001
  final String baseUrl = 'http://192.168.0.105:5001/api';

  Future<String?> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/signup'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'name': name, 'email': email, 'password': password}),
      );

      print('RAW RESPONSE: ${response.body}');

      if (response.statusCode == 201) {
        return null; // Success
      } else {
        return jsonDecode(response.body)['msg'] ?? 'Signup failed';
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        return null; // Success
      } else {
        return jsonDecode(response.body)['msg'] ?? 'Login failed';
      }
    } catch (e) {
      return e.toString();
    }
  }

  // Moved INSIDE the AuthService class so it can access `baseUrl` properly
  Future<void> getUserProfile(String userId) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/user/$userId'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        print('User Data: ${response.body}');
      } else {
        print('Failed to fetch profile');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
