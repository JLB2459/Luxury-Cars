import 'package:cars/app/presentation/modules/details/views/widgets/car_details_item.dart';
import 'package:cars/app/presentation/modules/details/views/widgets/drive_mode_information.dart';
import 'package:flutter/material.dart';

class CarDetailsPanel extends StatelessWidget {
  const CarDetailsPanel({
    required this.torque,
    required this.mphTopSpeed,
    required this.acceleration,
    super.key,
  });
  final String torque;
  final String mphTopSpeed;
  final double acceleration;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1.2,
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CarDetailsItem(
                  icon: Icons.route_outlined,
                  label: 'Power',
                  information: '$torque rpm',
                ),
                CarDetailsItem(
                  icon: Icons.speed_outlined,
                  label: 'Top Speed',
                  information: '$mphTopSpeed mph',
                ),
                CarDetailsItem(
                  icon: Icons.schedule_outlined,
                  label: 'Acceleration',
                  information: '$acceleration s',
                )
              ],
            ),
          ),
          Divider(
            thickness: 1.2,
            color: Colors.grey.shade300,
          ),
          DriveModeInformation(
            onPressed: () {
              debugPrint('More info about drive mode');
            },
          ),
        ],
      ),
    );
  }
}
