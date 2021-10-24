import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: CircleAvatar(
            radius: spacingUnit * 7,
            backgroundImage: AssetImage('assets/images/user_pic.png'),
          ),
          decoration: BoxDecoration(
            boxShadow: [defaultShadow],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: RichText(
            text: TextSpan(
                text: 'Juan Perez',
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                )),
          ),
        ),
      ],
    );
  }
}
