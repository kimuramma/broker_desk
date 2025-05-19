import 'package:broker_desk/constants.dart';
import 'package:broker_desk/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
        color: AppColors.secondaryColor,
      ),
      child: Row(
        children: [
          Image.asset('assets/images/profile_pic.png', height: 38),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text('Айнура Кыргызбаева'),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
