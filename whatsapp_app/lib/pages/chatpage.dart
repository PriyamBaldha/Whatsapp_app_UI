import 'package:flutter/material.dart';

import '../global.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff239a7e),
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(
                Icons.archive_outlined,
                color: Colors.grey,
              ),
              title: Text(
                "Archived",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                "2",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ...Global.allcontacts
                .map(
                  (e) => ListTile(
                    leading: CircleAvatar(
                        radius: 35, backgroundImage: AssetImage(e['images'])),
                    title: Text(
                      e['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      e['des'],
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Text(
                      e['time'],
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
