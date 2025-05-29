import 'package:broker_desk/constants.dart';
import 'package:broker_desk/presentation/pages/apply_lead_page/apply_lead_page.dart';
import 'package:broker_desk/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Мои заявки', style: TextStyle(fontSize: 18)),
            AppButton(labelText: 'Новая заявка', icon: Icon(Icons.add)),
          ],
        ),
      ],
    );
  }
}
