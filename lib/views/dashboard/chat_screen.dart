// import 'package:flutter/material.dart';
// import 'vertex_ai_service.dart';
// // import 

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _controller = TextEditingController();
//   final List<Map<String, String>> _messages = [];
//   bool _isLoading = false;

//   void _sendMessage() async {
//     if (_controller.text.trim().isEmpty) return;

//     String userMessage = _controller.text.trim();
//     _controller.clear();

//     setState(() {
//       _messages.add({'role': 'user', 'message': userMessage});
//       _isLoading = true;
//     });

//     try {
//       String aiResponse = await VertexAIService.getChatResponse(userMessage);
//       setState(() {
//         _messages.add({'role': 'ai', 'message': aiResponse});
//       });
//     } catch (e) {
//       setState(() {
//         _messages.add({'role': 'ai', 'message': 'Error: Unable to fetch response'});
//       });
//     }

//     setState(() => _isLoading = false);
//   }

//   Widget _buildChatBubble(String message, bool isUser) {
//     return Align(
//       alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
//         margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//         decoration: BoxDecoration(
//           color: isUser ? Colors.blue[300] : Colors.grey[300],
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Text(
//           message,
//           style: const TextStyle(color: Colors.black87),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Vertex AI Chatbot')),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 bool isUser = _messages[index]['role'] == 'user';
//                 return _buildChatBubble(_messages[index]['message']!, isUser);
//               },
//             ),
//           ),
//           if (_isLoading) const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: CircularProgressIndicator(),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: const InputDecoration(hintText: 'Type a message...'),
//                     onSubmitted: (_) => _sendMessage(),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.send),
//                   onPressed: _sendMessage,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'gemini_service.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  bool _isLoading = false;

  void _sendMessage() async {
    if (_controller.text.trim().isEmpty) return;

    String userMessage = _controller.text.trim();
    _controller.clear();

    setState(() {
      _messages.add({'role': 'user', 'message': userMessage});
      _isLoading = true;
    });

    try {
      String aiResponse = await GeminiService.getChatResponse(userMessage);
      setState(() {
        _messages.add({'role': 'ai', 'message': aiResponse});
      });
    } catch (e) {
      setState(() {
        _messages.add({'role': 'ai', 'message': 'Error: Unable to fetch response'});
      });
    }

    setState(() => _isLoading = false);
  }

  Widget _buildChatBubble(String message, bool isUser) {
    return Column(
      crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!isUser) ...[
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/medicircle_logo.png'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 16.5),
              _profileBadge("MedAI", isUser: false),
            ],
            if (isUser) _profileBadge("U", isUser: true),
          ],
        ),
        SizedBox(height: 4.4),

        Align(
          alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 11, horizontal: 15.4),
            margin: EdgeInsets.only(
              top: 4.4,
              left: isUser ? 55 : 8.8,
              right: isUser ? 17.6 : 55,
            ),
            decoration: BoxDecoration(
              color: isUser ? const Color(0xFF38A3A5) : const Color.fromARGB(255, 87, 204, 153),
              borderRadius: BorderRadius.circular(13.2),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 16.5),
            ),
          ),
        ),
      ],
    );
  }

  Widget _profileBadge(String text, {bool isUser = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        color: isUser ? Colors.grey[300] : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 13.2,
          fontWeight: FontWeight.bold,
          color: isUser ? const Color(0xFF38A3A5) : Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gemini Chatbot', style: TextStyle(fontSize: 22))),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                bool isUser = _messages[index]['role'] == 'user';
                return _buildChatBubble(_messages[index]['message']!, isUser);
              },
            ),
          ),
          if (_isLoading) SizedBox(height: 44, width: 44, child: CircularProgressIndicator()),
          Padding(
            padding: EdgeInsets.all(8.8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(hintText: 'Type a message...', hintStyle: TextStyle(fontSize: 16.5)),
                    onSubmitted: (_) => _sendMessage(),
                    style: TextStyle(fontSize: 16.5),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, size: 26.4),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
