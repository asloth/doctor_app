import 'package:flutter/material.dart';
import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/profile/components/chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: defaultPadding * 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Mi Chat',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) => ChatCard(
                      'Dr. Asma Khan',
                      'No',
                      () {},
                    ),
                  ),
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) => ChatCard(
                      'Dr. Cecilia Zapata',
                      'Si',
                      () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
