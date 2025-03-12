import 'dart:convert';
import 'package:http/http.dart' as http;

class VertexAIService {
  static const String apiUrl = "YOUR_VERTEX_AI_ENDPOINT";
  static const String apiKey = "YOUR_GOOGLE_CLOUD_API_KEY";

  static Future<String> getChatResponse(String userInput) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $apiKey",
      },
      body: jsonEncode({"input": userInput}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data["response"] ?? "No response received.";
    } else {
      return "Error: ${response.reasonPhrase}";
    }
  }
}
