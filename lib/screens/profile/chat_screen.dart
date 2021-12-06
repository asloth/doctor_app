import 'package:flutter/material.dart';
import 'package:doctor_app/screens/profile/components/chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
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
                    itemCount: 6,
                    itemBuilder: (context, index) => AttentionCard(
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
