import 'package:broker_desk/constants.dart';
import 'package:broker_desk/presentation/pages/apply_lead_page/apply_lead_page.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.labelText, this.icon});
  final String? labelText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.5,
          vertical: defaultPadding,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => ApplyLeadPage()),
        );
      },
      label: Text(labelText!, style: TextStyle(fontSize: 12)),
      icon: icon,
    );
  }
}
