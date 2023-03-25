import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:initial/core/data/posts.dart';
import 'package:initial/core/models/post_model.dart';
import 'package:initial/core/utils/colors.dart';
import 'package:initial/view/profile/profile_controller.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/assets.dart';

class ProfileSharedPosts extends StatefulWidget {
  ProfileSharedPosts({super.key});

  @override
  State<ProfileSharedPosts> createState() => _ProfileSharedPostsState();
}

class _ProfileSharedPostsState extends State<ProfileSharedPosts>
    with TickerProviderStateMixin {
  ProfileContoller profileContoller = Get.put(ProfileContoller());
  List<PostModel> posts = testPosts.map((e) => PostModel.fromMap(e)).toList();
  @override
  void initState() {
    super.initState();
    profileContoller.tabController = TabController(length: 2, vsync: this);
    profileContoller.tabController?.addListener(() {
      profileContoller.pageController
          ?.jumpToPage(profileContoller.tabController!.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          buildTabBar(),
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                profileContoller.tabController?.index = (value);
              },
              controller: profileContoller.pageController,
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: posts.length,
                  itemBuilder: (context, index) =>
                      Image.asset(posts[index].postImage!),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 2,
                  itemBuilder: (context, index) =>
                      Image.asset(posts[index].postImage!),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      controller: profileContoller.tabController,
      tabs: const [
        Icon(
          Icons.grid_3x3,
          color: Colors.black,
        ),
        Icon(
          Icons.person_3_outlined,
          color: Colors.black,
        ),
      ],
    );
  }
}
