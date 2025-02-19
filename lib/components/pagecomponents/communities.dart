import 'package:flutter/material.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});
  @override
  State<Communities> createState() => _Communities();
}

class _Communities extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: const Text("Communities",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              actions: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.qr_code, color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.white),
                ),
                PopupMenuButton(itemBuilder: (BuildContext context) {
                  return const [
                    PopupMenuItem(value: "Settings", child: Text("Settings")),
                  ];
                })
              ],
            ),
            body: const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stay connected with a community",
                        style: TextStyle(color: Colors.white)),
                    Text(
                        "Communities bring members together in tpoic-based groups, and makes it easy to get admin annocuments.",
                        style: TextStyle(color: Colors.white)),
                    Text("Any community you're added to will appear here",
                        style: TextStyle(color: Colors.white))
                  ]),
            )));
  }
}
