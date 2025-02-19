import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});
  @override
  State<Calls> createState() => _Calls();
}

class _Calls extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Calls",
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
                PopupMenuItem(
                    value: "Clear call log", child: Text("Clear call log")),
                PopupMenuItem(value: "Settings", child: Text("Settings")),
              ];
            })
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text("Favourities",
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            ),
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.heart_broken)),
              title:
                  Text("Add favourite", style: TextStyle(color: Colors.white)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text("Recent",
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            ),
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Sara Jain", style: TextStyle(color: Colors.white)),
              subtitle: Row(
                children: [
                  Text("12:30 pm",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image2.jpg")),
              title:
                  const Text("John Doe", style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Text("8:32 am",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image3.jpg")),
              title: const Text("Elles Perry",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Text("11:07 am",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image4.jpg")),
              title: const Text("Jenny Taylor",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Text("10:31 am",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image5.jpg")),
              title: const Text("Mathew Store",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Text("7:53 am",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image1.jpg")),
              title: const Text("Kelvin Heart",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Text("Yesterday",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
