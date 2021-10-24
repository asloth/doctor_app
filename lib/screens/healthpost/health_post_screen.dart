import 'package:doctor_app/models/HealthPost.dart';
import 'package:doctor_app/screens/healthpost/components/health_post_card.dart';
import 'package:flutter/material.dart';

class HealthPostScreen extends StatelessWidget {
  const HealthPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Postas más cercanas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: healthPosts.length,
                    itemBuilder: (context, index) => HealthPostCard(
                      healthPost: healthPosts[index],
                      press: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
