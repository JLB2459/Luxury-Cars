import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:cars/app/presentation/modules/details/views/widgets/buy_car_panel.dart';
import 'package:cars/app/presentation/modules/details/views/widgets/car_details_panel.dart';
import 'package:cars/app/presentation/modules/details/views/widgets/extra_details_item.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    //final asset = ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.maybePop(context),
          splashRadius: 20,
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0XFF121926),
          ),
        ),
        title: Text(
          'Detail car',
          style: FontStyles.blacktitle,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chevrolet',
                  style: FontStyles.greySubtitle.copyWith(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Chevrolet Camaro',
                  style: FontStyles.blacktitle,
                ),
                CachedNetworkImage(
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2015/10/01/17/17/car-967387_1280.png',
                ),
                Row(
                  children: const [
                    ExtraDetailsItem(
                      label: 'Climate Control',
                      information: 'Two zone',
                      detailedInfo: '21.5°C',
                    ),
                    ExtraDetailsItem(
                      label: 'Type Pressure',
                      information: 'Last 7 months',
                      isDualInfo: true,
                      rightPressure: '23.4',
                      leftPressure: '23.5',
                    ),
                  ],
                ),
                const CarDetailsPanel(
                  acceleration: 4.4,
                  mphTopSpeed: '190',
                  torque: '6500',
                ),
                const BuyCarPanel(
                  carModel: 'Chevrolet Camaro',
                  price: 54990,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
