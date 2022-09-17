import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../global.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff239a7e),
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      backgroundColor: Color(0xff121b22),
      body: SingleChildScrollView(
        child: Column(
          children: Global.allcontacts
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
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_received,
                        color: Colors.green,
                      ),
                      Text(
                        e['time'],
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    onPressed: () async {
                      Uri url = Uri.parse("tel:+91[e]['no']}");

                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Can not be launched.."),
                          backgroundColor: Colors.redAccent,
                          behavior: SnackBarBehavior.floating,
                        ));
                      }
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
