import 'package:broker_desk/constants.dart';
import 'package:broker_desk/presentation/pages/apply_lead_page/apply_lead_page.dart';
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
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ApplyLeadPage(),
                  ),
                );
              },
              label: Text('Новая заявка', style: TextStyle(fontSize: 12)),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
