import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});
  @override
  State<Chats> createState() => _Chats();
}

class _Chats extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("WhatsApp",
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
              child: Icon(Icons.camera_alt_outlined, color: Colors.white),
            ),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(value: "New group", child: Text("New group")),
                PopupMenuItem(
                    value: "New broadcast", child: Text("New broadcast")),
                PopupMenuItem(
                    value: "Linked devices", child: Text("Linked devices")),
                PopupMenuItem(
                    value: "Starred messages", child: Text("Starred messages")),
                PopupMenuItem(value: "Payments", child: Text("Payments")),
                PopupMenuItem(value: "Settings", child: Text("Settings")),
              ];
            })
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 30.0,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 10.0),
                      focusColor: Colors.white,
                      prefixIcon: const Icon(Icons.search, color: Colors.white),
                      hintStyle: const TextStyle(color: Colors.white),
                      hintText: "Ask Meta AI or Search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image1.jpg")),
              title: const Text("Kelvin Heart",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Icon(Icons.check, color: Colors.blue),
                  Text("Hi bro",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Text(
                "10.50 am",
                style: TextStyle(color: Color.fromARGB(255, 214, 197, 197)),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Sara Jain", style: TextStyle(color: Colors.white)),
              subtitle: Row(
                children: [
                  Icon(Icons.check, color: Colors.blue),
                  Text("Lucky me",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: Text(
                "12.30 am",
                style: TextStyle(color: Color.fromARGB(255, 214, 197, 197)),
              ),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image2.jpg")),
              title:
                  const Text("John Doe", style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Icon(Icons.check, color: Colors.blue),
                  Text("See you in practice",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Text(
                "2.40 pm",
                style: TextStyle(color: Color.fromARGB(255, 214, 197, 197)),
              ),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image3.jpg")),
              title: const Text("Elles Perry",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Icon(Icons.check, color: Colors.blue),
                  Text("Got you",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Text(
                "5.13 pm",
                style: TextStyle(color: Color.fromARGB(255, 214, 197, 197)),
              ),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image4.jpg")),
              title: const Text("Jenny Taylor",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Icon(Icons.check, color: Colors.blue),
                  Text("Hi bro",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Text(
                "8.30 pm",
                style: TextStyle(color: Color.fromARGB(255, 214, 197, 197)),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("You", style: TextStyle(color: Colors.white)),
              subtitle: Row(
                children: [
                  Icon(Icons.check, color: Colors.blue),
                  Text("file sent",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: Text(
                "12.30 am",
                style: TextStyle(color: Color.fromARGB(255, 214, 197, 197)),
              ),
            ),
            ListTile(
              leading: CircleAvatar(child: Image.asset("images/image5.jpg")),
              title: const Text("Mathew Store",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Row(
                children: [
                  Text("Order for package in mu store. Get it",
                      style:
                          TextStyle(color: Color.fromARGB(255, 214, 197, 197)))
                ],
              ),
              trailing: const Text(
                "12/08/24",
                style: TextStyle(color: Color.fromARGB(255, 214, 197, 197)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
