import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatScreen extends StatefulWidget {
  static const String screenRout = 'chat_screen';
  
  const ChatScreen({Key? key}) :super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;

  void getCurrentUser(){
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: Row(
          children: [
               Image.asset('assets/images/images.png', height: 25),
               SizedBox(width: 10),
               Text('Chat with me'),
          ], 
        ),
        actions: [
          IconButton(
            onPressed: (){},
             icon: Icon(Icons.close),
             )
        ],
      ),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
            ),  
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: TextField(
                  onChanged: (value){

                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    hintText: 'Write Your Message here ...',
                    border: InputBorder.none,
                  ),
                ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                  'send',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,  
                  ),
                  ),
                  )
              ],
            ), 
          ),
        ],
      )
      ),
    );
  }
}