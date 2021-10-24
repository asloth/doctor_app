import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    Key? key,
    this.icon = Icons.access_alarm_outlined,
    this.text = 'prueba',
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: spacingUnit * 5.5,
      margin: EdgeInsets.symmetric(
        horizontal: spacingUnit * 4,
      ).copyWith(
        bottom: spacingUnit * 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: spacingUnit * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(spacingUnit * 3),
        color: Theme.of(context).backgroundColor,
        boxShadow: [defaultShadow],
      ),
      child: Row(
        children: <Widget>[
          Icon(
            this.icon,
            size: spacingUnit * 2.5,
          ),
          SizedBox(width: spacingUnit * 1.5),
          Text(
            this.text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          if (this.hasNavigation)
            Icon(
              Icons.arrow_forward,
              size: spacingUnit * 2.5,
            ),
        ],
      ),
    );
  }
}
