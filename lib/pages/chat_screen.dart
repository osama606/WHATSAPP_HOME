import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dummyData[i].name,
                  style: TextStyle(
                     fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  dummyData[i].time,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 6),
              child: Text(
                dummyData[i].message,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
