// ignore_for_file: file_names


import 'package:flutter/material.dart';
import 'package:cc206_chatbot_application/features/login.dart';
import 'package:cc206_chatbot_application/features/profile.dart';
import 'package:cc206_chatbot_application/features/settings.dart';
import 'package:cc206_chatbot_application/features/faq.dart';


class ChatDetailPageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ChatDetailPageAppBar({super.key});

  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(156, 134, 115, 3),
      flexibleSpace: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(right: 16, left: 10,),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 2),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.png"),
                maxRadius: 20,
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Ambatu.help",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Online",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  // Handle menu item selection
                  if (value == 'Profile') {
                    // Navigate to the desired page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfilePage() ),
                    );
                  }
                  if (value == 'Settings') {
                    // Navigate to the desired page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  }
                  if (value == 'FAQ' || value == 'Faq' || value == 'faq') {
                    // Navigate to the desired page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const faqpage()),
                     );
                   }
                  if (value == 'Log Out') {
                    // Navigate to the desired page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Login()),
                    );
                  }
                },
                itemBuilder: (BuildContext context) {
                  return {'Profile', 'Settings', 'FAQ' ,'Log Out'}
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

