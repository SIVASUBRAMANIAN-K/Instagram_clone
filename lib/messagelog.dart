import 'package:flutter/material.dart';
import 'package:instaclo0ne/ChatRoomScreen.dart';

void main() {
  runApp(Chatlog());
}

class Chatlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = [
    Message(
      sender: 'Sasuke Uchiha',
      text: 'Sent a Reel by Uzumaki - 27m',
    ),
    Message(
      sender: 'Kisame',
      text: 'Sent 1h ago',
    ),
    Message(
      sender: 'Jujutsu',
      text: '4+ new messages - 1h',
    ),
    Message(
      sender: 'Gara',
      text: '4 new messages - 2h',
    ),
    Message(
      sender: 'Kakashi Senesi',
      text: 'Sent a reel by Uchiha - 3h',
    ),
    Message(
      sender: 'Madara',
      text: 'Mentioned you in a story - 1w',
    ),
    Message(
      sender: 'Itachi Uchiha',
      text: 'Seen Monday',
    ),
    Message(
      sender: 'Kibo',
      text: 'Sent last week',
    ),
    Message(
      sender: 'Sakura',
      text: 'Sent last week',
    ),
    Message(
      sender: 'Shino',
      text: 'Hey!',
    ),
    Message(
      sender: 'Rock Lee',
      text: 'Hi!',
    ),

    // Add more messages here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: _messages.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_messages[index].sender),
            subtitle: Text(_messages[index].text),
            trailing: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatApp()),
                );
              },
              child: Text(""),
            ),
          );
        },
      ),
    );
  }
}

class Message {
  final String sender;
  final String text;

  Message({
    required this.sender,
    required this.text,
  });
}
