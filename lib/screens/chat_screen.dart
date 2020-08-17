import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

class ChatScreen extends StatefulWidget {
  static const String id = 'chat_screen';
=======

class ChatScreen extends StatefulWidget {
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
<<<<<<< HEAD
  final messageController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  final _auth = FirebaseAuth.instance;

  String messageText;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

//  void getMessage() async
//  {
//    final messages=await _firestore.collection('messages').getDocuments();
//    for(var message in messages.documents)
//      {
//        print(message.data);
//      }
//
//  }

  void getStreamMessage() async {
    await for (var snapshot in _firestore.collection('messages').snapshots()) {
      for (var message in snapshot.documents) print(message.data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
=======
  @override
  Widget build(BuildContext context) {
    return Scaffold(
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
<<<<<<< HEAD
                _auth.signOut();
                Navigator.pop(context);
=======
                //Implement logout functionality
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
<<<<<<< HEAD
            MessageStream(),
=======
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
<<<<<<< HEAD
                      controller: messageController,
                      onChanged: (value) {
                        messageText = value;
=======
                      onChanged: (value) {
                        //Do something with the user input.
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
<<<<<<< HEAD
                      messageController.clear();
                      //Implement send functionality.
                      _firestore.collection('messages').add(
                          {'text': messageText, 'sender': loggedInUser.email});
=======
                      //Implement send functionality.
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
<<<<<<< HEAD

class MessageBubble extends StatelessWidget {
  MessageBubble({this.text, this.sender, this.isMe});
  final String text;
  final String sender;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              sender,
              style: TextStyle(fontSize: 10.0, color: Colors.black54),
            ),
            Material(
              elevation: 10.0,
              borderRadius: isMe
                  ? BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    )
                  : BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
              color: isMe ? Colors.lightBlueAccent : Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: isMe ? Colors.white : Colors.black54,
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}

class MessageStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('messages').snapshots(),
        builder: (context, snapshot) {
          List<MessageBubble> messageWidgets = [];
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final messages = snapshot.data.documents;
          for (var message in messages) {
            final messageText = message.data['text'];
            final messageSender = message.data['sender'];
            final currentUser = loggedInUser.email;

            final messageWidget = MessageBubble(
              sender: messageSender,
              text: messageText,
              isMe: currentUser == messageSender,
            );
            messageWidgets.add(messageWidget);
          }

          return Expanded(
            child: ListView(
              reverse: true,
              children: messageWidgets,
            ),
          );
        });
  }
}
=======
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
