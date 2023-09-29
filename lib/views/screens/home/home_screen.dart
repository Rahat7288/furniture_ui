import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../controllers/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final double defaultSize = SizeConfig.defaultSize(context);
    return Scaffold(
      appBar: buildAppBar(),
      // body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          height: 20,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            height: 24,
          ),
        ),
        Center(
          child: Text(
            "Scan",
            style: TextStyle(
                color: AppColors.kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
