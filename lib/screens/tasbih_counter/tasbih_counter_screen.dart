import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahabul_azkar/screens/tasbih_counter/widget/tasbih_counter_card.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';

class TasbihCounterScreen extends StatefulWidget {
  const TasbihCounterScreen({Key? key}) : super(key: key);

  @override
  State<TasbihCounterScreen> createState() => _TasbihCounterScreenState();
}

class _TasbihCounterScreenState extends State<TasbihCounterScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.primary,
          tooltip: 'Add Zikr',
          onPressed: () {},
          icon: SvgPicture.asset(
            AppVectors.addZikrIcon,
          ),
          label: const Text('Add Zikr',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Manrope',
                  color: AppColors.white,
                  fontWeight: FontWeight.w600))),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tasbih Counter',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Manrope',
                color: AppColors.textColorDarkBlue,
                fontWeight: FontWeight.w600)),
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
      ),
      body: Container(
        width: size.width,
        color: AppColors.backgroundWhite,
        child: ListView(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            children: List.generate(
              6,
              (index) => TasbihCounterCard(
                onTap: () => print('presseddd'),
                title:
                    'Subhan Allahi wa bihamdihi; Astaghfirullaha wa atubu ilaihi',
                description: '22-March-2023, 12:00am',
              ),
            )),
      ),
    );
  }
}
