import 'package:broker_desk/constants.dart';
import 'package:broker_desk/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    super.key,
    required this.title,
    required this.svgSrc,
    this.income,
  });

  final String title, svgSrc;
  final String? income;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      child: Container(
        padding: EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: AppColors.primaryColor.withValues(alpha: (0.15 * 255)),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(width: 20, height: 20, child: SvgPicture.asset(svgSrc)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
                    Text('За сегодня'),
                  ],
                ),
              ),
            ),
            if (income != null) Text(income!),
          ],
        ),
      ),
    );
  }
}
