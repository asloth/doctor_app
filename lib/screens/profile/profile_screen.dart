import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/profile/components/profile_header.dart';
import 'package:flutter/material.dart';

import 'components/profile_list_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: spacingUnit * 5),
            ProfileHeader(),
            SizedBox(height: spacingUnit * 3),
            Expanded(
                child: ListView(
              children: <Widget>[
                ProfileListItem(
                  icon: Icons.person,
                  text: 'Editar mis datos',
                ),
                ProfileListItem(
                  icon: Icons.history,
                  text: 'Historial clínico',
                ),
                ProfileListItem(
                  icon: Icons.file_copy,
                  text: 'Subir copia de mi DNI',
                ),
                ProfileListItem(
                  icon: Icons.settings,
                  text: 'Configuración',
                ),
                ProfileListItem(
                  icon: Icons.logout,
                  text: 'Cerrar sesión',
                  hasNavigation: false,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
