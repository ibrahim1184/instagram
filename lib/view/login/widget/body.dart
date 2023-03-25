import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:initial/core/utils/assets.dart';
import 'package:initial/core/utils/colors.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:initial/core/utils/padding.dart';
import 'package:initial/core/utils/text.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});
  List<String> data = ["Can", "2", "Aasd", "4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Column(
        children: [
          
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset("images/ig_text_icon.svg"),
      backgroundColor: ColorRes.white,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "images/like.svg",
            height: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "images/dm.svg",
            height: 35,
          ),
        )
      ],
    );
  }
}
