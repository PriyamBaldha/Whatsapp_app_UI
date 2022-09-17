import 'package:flutter/material.dart';

import '../global.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff239a7e),
        onPressed: () {},
        child: Icon(Icons.photo_camera),
      ),
      backgroundColor: Color(0xff121b22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                child: Icon(Icons.whatsapp),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xff239a7e),
                  ),
                ),
              ),
              title: Text(
                "My status",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Tap to add status update",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Recent updates",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            ...Global.allcontacts
                .map(
                  (e) => ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                          radius: 35, backgroundImage: AssetImage(e['images'])),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xff239a7e),
                        ),
                      ),
                    ),
                    title: Text(
                      e['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
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
