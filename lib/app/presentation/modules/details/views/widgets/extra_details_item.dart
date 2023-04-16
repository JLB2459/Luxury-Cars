import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class ExtraDetailsItem extends StatelessWidget {
  const ExtraDetailsItem({
    required this.label,
    required this.information,
    this.detailedInfo,
    this.cardColor = const Color(0XFFD8E4F0),
    this.isDualInfo = false,
    this.rightPressure,
    this.leftPressure,
    super.key,
  });

  final String label;
  final String information;
  final String? detailedInfo;
  final Color cardColor;
  final bool isDualInfo;
  final String? rightPressure;
  final String? leftPressure;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: isDualInfo ? const Color(0XFFF0EAE5) : cardColor,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: MediaQuery.of(context).size.height * 0.185,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(isDualInfo ? Icons.air : Icons.ac_unit_outlined),
              Text(
                //'Climate Control',
                label,
                style: FontStyles.subtitle.copyWith(
                  color: const Color(0XFF121926),
                ),
              ),
              Text(
                //'Two-zone',
                information,
                style: FontStyles.normal.copyWith(
                  color: Colors.black54,
                ),
              ),
              if (isDualInfo)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          leftPressure != null ? leftPressure! : '-',
                          style: FontStyles.blacktitle.copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'BAR',
                          style: FontStyles.greySubtitle.copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: 30,
                      width: 1.2,
                      color: Colors.grey.shade400,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          rightPressure != null ? rightPressure! : '-',
                          style: FontStyles.blacktitle.copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'BAR',
                          style: FontStyles.greySubtitle.copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                )
              else
                Text(
                  //'23.5°C',
                  detailedInfo != null ? detailedInfo! : '',
                  style: FontStyles.blacktitle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
