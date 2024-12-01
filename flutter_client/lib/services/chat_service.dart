


import 'package:web_socket_channel/web_socket_channel.dart';

class ChatService {
  final WebSocketChannel _channel = WebSocketChannel.connect(
    Uri.parse('ws:// 192.168.1.7:4000'), // Replace with your WebSocket URL
  );

  WebSocketChannel get channel => _channel;

  void sendMessage(String message) {
    if (message.isNotEmpty) {
      _channel.sink.add(message);
    }
  }

  void dispose() {
    _channel.sink.close();
  }
}
