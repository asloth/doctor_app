import 'dart:ui';

import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/home/components/live_attention.dart';
import 'package:doctor_app/screens/home/components/C1.dart';
import 'package:flutter/material.dart';

import 'package:doctor_app/screens/profile/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Text(
                'Posta Virtual',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            LiveAttention(),
            C1Attention(),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: RawMaterialButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(),
                  ),
                ),
                child: new Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 35.0,
                ),
                shape: new CircleBorder(),
                elevation: 2.0,
                fillColor: Color(0xFF6CD8D1),
                padding: const EdgeInsets.all(15.0),
              ),
            ),
            const SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}
