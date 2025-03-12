import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class VertexAIService {
  static final String apiKey = dotenv.env['VERTEX_AI_API_KEY'] ?? '';

  static Future<String> getChatResponse(String prompt) async {
    final url = Uri.parse(
        'https://us-central1-aiplatform.googleapis.com/v1/projects/YOUR_PROJECT_ID/locations/us-central1/publishers/google/models/gemini-pro:predict');

    final response = await http.post(
      url,
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "instances": [
          {"prompt": prompt}
        ]
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data["predictions"]?[0]["content"] ?? "No response";
    } else {
      return "Error: ${response.body}";
    }
  }
}
