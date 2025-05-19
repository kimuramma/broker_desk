import 'package:broker_desk/presentation/pages/dashboard/widgets/profile_card.dart';
import 'package:flutter/material.dart';

import 'search_field.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Dashboard'),
        Spacer(flex: 2),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}
