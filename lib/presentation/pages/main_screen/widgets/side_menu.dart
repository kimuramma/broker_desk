import 'package:broker_desk/presentation/pages/main_screen/widgets/drawer_list_tile.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerListTile(
              title: 'Кредитные заявки',
              svgSrc: 'assets/vectors/menu_dashboard.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Статиска',
              svgSrc: 'assets/vectors/menu_task.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Профиль',
              svgSrc: 'assets/vectors/menu_profile.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Настройки',
              svgSrc: 'assets/vectors/menu_setting.svg',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
