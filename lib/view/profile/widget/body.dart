import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:initial/view/profile/widget/highlights.dart';
import 'package:initial/view/profile/widget/posts.dart';
import 'package:initial/view/profile/widget/profileDetails.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileDetails(),
        ProfileHighlights(),
          ProfileSharedPosts()
      ],
    );
  }
}
