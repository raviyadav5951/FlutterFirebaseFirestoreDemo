import 'package:flutter/material.dart';

class MessageBuble extends StatelessWidget {

  final String messageText,messageSender;
  final bool isMe;

  MessageBuble({this.messageSender,this.messageText,this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: isMe?CrossAxisAlignment.end:CrossAxisAlignment.start,
            children: <Widget>[
              Text('$messageSender',style: TextStyle(fontSize: 12.0,color: Colors.black54),),
              Material(
                elevation: 5.0,
                borderRadius: isMe?BorderRadius.only(topLeft: Radius.circular(30.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0),):BorderRadius.only(topRight: Radius.circular(30.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0),),
                  color:isMe? Colors.blueAccent: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                    child: Text(
              '$messageText',
              style: TextStyle(color: isMe?Colors.white:Colors.black54,fontSize: 15.0),
        ),
        ),
      ),
            ],
          ),
    );
  }
}
