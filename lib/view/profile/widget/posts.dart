import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/assets.dart';

class ProfileSharedPosts extends StatelessWidget {
  const ProfileSharedPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 2,
          child: TabBar(
            tabs: [
              SvgPicture.asset(IconRes.square),


              
              Icon(Icons.person_3_outlined)
            ],
          ),
        )
      ],
    );
  }
}
