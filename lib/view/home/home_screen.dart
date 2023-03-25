import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:initial/core/utils/assets.dart';
import 'package:initial/core/utils/colors.dart';
import 'package:initial/view/home/widget/body.dart';
import 'package:get/get.dart';
import 'package:initial/view/profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: HomeBody(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: InkWell(
          onTap: () => Get.to(() => ProfileScreen()),
          child: SvgPicture.asset(IconRes.ig_text_icon)),
      backgroundColor: ColorRes.white,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            IconRes.heart,
            height: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            IconRes.dm,
            height: 35,
          ),
        )
      ],
    );
  }
}
