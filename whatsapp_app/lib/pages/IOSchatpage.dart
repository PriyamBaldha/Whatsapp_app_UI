import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class IOSChatPage extends StatefulWidget {
  const IOSChatPage({Key? key}) : super(key: key);

  @override
  State<IOSChatPage> createState() => _IOSChatPageState();
}

class _IOSChatPageState extends State<IOSChatPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(12),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Text(
                    "Broadcast Lists",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "New Group",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ...Global.allcontacts
                .map(
                  (e) => Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(6),
                              child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage(e['images'])),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e['name'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  e['des'],
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(e['time']),
                            SizedBox(width: 20),
                            Icon(
                              CupertinoIcons.volume_off,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
