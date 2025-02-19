import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/pagecomponents/calls.dart';
import 'package:whatsapp_clone/components/pagecomponents/chats.dart';
import 'package:whatsapp_clone/components/pagecomponents/communities.dart';
import 'package:whatsapp_clone/components/pagecomponents/updates.dart';

class WhatsappMain extends StatefulWidget {
  const WhatsappMain({super.key});
  @override
  State<WhatsappMain> createState() => _WhatsappMain();
}

class _WhatsappMain extends State<WhatsappMain> {
  int index = 0;
  final screens = const [Chats(), Updates(), Communities(), Calls()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        indicatorColor: Colors.green,
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.message), label: "Chats"),
          NavigationDestination(
              icon: Icon(Icons.update_sharp), label: "Updates"),
          NavigationDestination(
              icon: Icon(Icons.people_sharp), label: "Communities"),
          NavigationDestination(icon: Icon(Icons.call), label: "Calls")
        ],
      ),
    );
  }
}
