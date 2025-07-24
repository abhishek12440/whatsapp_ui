import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/chats.dart';
import 'package:whatsapp_ui/communities.dart';
import 'package:whatsapp_ui/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {int index = 0;
List<Widget> pages =[Chats(), Updates(), Communities(),Calls()

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        currentIndex: index,onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.black),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update, color: Colors.black),
            label: "updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people, color: Colors.black),
            label: "communities",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, color: Colors.black),
            label: "calls",
          ),
        ],
      ),
   body: pages[index], );
  }
}
