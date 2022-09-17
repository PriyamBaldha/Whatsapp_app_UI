import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class IOSStatusPage extends StatefulWidget {
  const IOSStatusPage({Key? key}) : super(key: key);

  @override
  State<IOSStatusPage> createState() => _IOSStatusPageState();
}

class _IOSStatusPageState extends State<IOSStatusPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 42),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.whatsapp),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "My Status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Add to my status",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.camera,
                  ),
                  SizedBox(width: 20),
                  Icon(
                    CupertinoIcons.eyedropper_full,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 20,
              width: double.infinity,
              child: Text("Recent Update"),
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
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage(e['images'])),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.blueAccent),
                                ),
                              ),
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
                                  e['time'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
