import 'package:broker_desk/constants.dart';
import 'package:broker_desk/core/configs/theme/app_colors.dart';
import 'package:broker_desk/presentation/pages/dashboard/widgets/chart_widget.dart';
import 'package:broker_desk/presentation/pages/dashboard/widgets/detaul_card.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.dataMap});

  final Map<String, double> dataMap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: defaultPadding),

      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: Text(
              'Детали заявок',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          ChartWidget(dataMap: dataMap),
          DetailCard(
            title: 'Всего заявок: 230',
            svgSrc: 'assets/vectors/Documents.svg',
            income: '2 600 000 тг.',
          ),
          DetailCard(
            title: 'Одобрено: 130',
            svgSrc: 'assets/vectors/Documents.svg',
            income: '1 300 000 тг.',
          ),
          DetailCard(
            title: 'Выдана: 95',
            svgSrc: 'assets/vectors/Documents.svg',
            income: '1 300 000 тг.',
          ),
          DetailCard(
            title: 'Отклонено: 25',
            svgSrc: 'assets/vectors/unknown.svg',
          ),
        ],
      ),
    );
  }
}
