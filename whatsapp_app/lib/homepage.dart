import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_app/pages/IOSSettingpage.dart';
import 'package:whatsapp_app/pages/IOScallspage.dart';
import 'package:whatsapp_app/pages/IOSchatpage.dart';
import 'package:whatsapp_app/pages/IOSstatusspage.dart';
import 'package:whatsapp_app/pages/callspage.dart';
import 'package:whatsapp_app/pages/chatpage.dart';
import 'package:whatsapp_app/pages/statuspage.dart';

import 'global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  final List<Widget> ios_tabs = [
    IOSStatusPage(),
    IOSCallsPage(),
    IOSChatPage(),
    IOSSEttingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Text(
                  "WhatsApp",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Color(0xff1f2c34),
                bottom: TabBar(
                  controller: tabController,
                  indicatorColor: Color(0xff239a7e),
                  indicatorWeight: 3,
                  tabs: const [
                    Tab(text: "CHATS"),
                    Tab(text: "STATUS "),
                    Tab(text: "CALLS"),
                  ],
                ),
                actions: [
                  Icon(Icons.search),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Switch(
                      activeColor: Color(0xff239a7e),
                      value: Global.isIOS,
                      onChanged: (val) {
                        setState(() {
                          Global.isIOS = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
              body: TabBarView(
                controller: tabController,
                children: const [
                  ChatPage(),
                  StatusPage(),
                  CallsPage(),
                ],
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                // leading: Builder(
                //   builder: (context) {
                //     return GestureDetector(
                //       child: Icon(CupertinoIcons.arrow_right_arrow_left_square),
                //       onTap: () {
                //         Navigator.of(context).push(MaterialPageRoute(
                //             builder: (context) => MyDrawer()));
                //       },
                //     );
                //   },
                // ),
                middle: Text("Whatsapp"),
                trailing: CupertinoSwitch(
                    value: Global.isIOS,
                    onChanged: (val) {
                      setState(() {
                        Global.isIOS = val;
                      });
                    }),
              ),
              child: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.rectangle_stack_person_crop),
                        label: 'Status'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.phone), label: 'Calls'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.chat_bubble_2),
                        label: 'Chats'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                  ],
                ),
                tabBuilder: (BuildContext context, index) {
                  return CupertinoTabView(
                    builder: (BuildContext context) {
                      return ios_tabs[index];
                    },
                  );
                },
              ),
            ),
          );
  }
}
