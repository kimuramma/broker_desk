import 'package:broker_desk/constants.dart';
import 'package:broker_desk/core/configs/theme/app_colors.dart';
import 'package:broker_desk/presentation/pages/dashboard/widgets/details.dart';
import 'package:broker_desk/presentation/pages/dashboard/widgets/header.dart';
import 'package:broker_desk/presentation/pages/dashboard/widgets/my_orders.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final dataMap = <String, double>{
    "Отклонена": 25,
    "В процессе": 5,
    "Новая": 60,
    "Одобрена": 10,
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyOrders(),
                      SizedBox(height: defaultPadding),
                      Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [Text('Мои заявки')]),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(flex: 2, child: Details(dataMap: dataMap)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
