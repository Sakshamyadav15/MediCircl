import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class VertexAIService {
  static final String apiKey = dotenv.env['VERTEX_AI_API_KEY'] ?? '';

  static Future<String> getChatResponse(String prompt) async {
    print("Loaded API Key: $apiKey");
    if (apiKey.isEmpty) {
      return "Error: API key is missing!";
    }

    final url = Uri.parse(
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=$apiKey');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "contents": [
          {
            "parts": [
              {"text": prompt}
            ]
          }
        ]
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data["candidates"]?[0]["content"]["parts"][0]["text"] ?? "No response";
    } else {
      return "Error: ${response.body}";
    }
  }
}
