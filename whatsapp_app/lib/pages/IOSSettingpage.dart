import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSSEttingPage extends StatefulWidget {
  const IOSSEttingPage({Key? key}) : super(key: key);

  @override
  State<IOSSEttingPage> createState() => _IOSSEttingPageState();
}

class _IOSSEttingPageState extends State<IOSSEttingPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: 60,
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
                        "P R I Y A M",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "happy🤗",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.qr_code_scanner,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.message,
                      color: Colors.amber,
                    ),
                  ),
                  Text("Starred Message"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      CupertinoIcons.device_laptop,
                      color: Colors.teal,
                    ),
                  ),
                  Text("Linked Devices"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.key,
                      color: Colors.blue,
                    ),
                  ),
                  Text("Account"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.whatsapp,
                      color: Colors.green,
                    ),
                  ),
                  Text("Chats"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.red,
                    ),
                  ),
                  Text("Notifications"),
                  Spacer(),
                  Text(
                    "1",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.currency_rupee,
                      color: Colors.teal,
                    ),
                  ),
                  Text("Payments"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.data_exploration_rounded,
                      color: Colors.green,
                    ),
                  ),
                  Text("Storage and Data"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.help,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text("Help"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.heart_broken,
                      color: Colors.red,
                    ),
                  ),
                  Text("Tell a Friend"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
