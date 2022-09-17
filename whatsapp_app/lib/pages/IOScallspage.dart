import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../global.dart';

class IOSCallsPage extends StatefulWidget {
  const IOSCallsPage({Key? key}) : super(key: key);

  @override
  State<IOSCallsPage> createState() => _IOSCallsPageState();
}

class _IOSCallsPageState extends State<IOSCallsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      // navigationBar: CupertinoNavigationBar(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
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
                                Row(
                                  children: [
                                    Icon(CupertinoIcons.phone_arrow_up_right),
                                    SizedBox(width: 5),
                                    Text(
                                      "Outgoing",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(e['time']),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () async {
                                Uri url = Uri.parse("tel:+91[e]['no']}");

                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Can't be launched..."),
                                      backgroundColor: Colors.redAccent,
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                }
                              },
                              child: Icon(
                                CupertinoIcons.phone,
                                color: Colors.green,
                              ),
                            ),
                            // Icon(CupertinoIcons.exclamationmark_circle),
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
