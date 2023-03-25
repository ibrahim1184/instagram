import 'package:flutter/material.dart';
import 'package:initial/core/data/stories.dart';
import 'package:initial/core/models/story_model.dart';
import 'package:initial/core/utils/assets.dart';
import 'package:initial/core/utils/colors.dart';
import 'package:initial/core/utils/padding.dart';
import 'package:initial/core/widgets/circle_avatar.dart';

class HomeStories extends StatelessWidget {
  HomeStories({super.key});
  final List _testStories = testStories;

  List<StoryModel>? stories;
  @override
  Widget build(BuildContext context) {
    stories = testStories.map((e) => StoryModel.fromMap(e)).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(stories!.length,
            (index) => buildStoryContainer(stories![index], index)),
      ),
    );
  }

  Widget buildStoryContainer(StoryModel story, int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: CustomPadding.smallH),
          child: CustomCircleAvatar(
            padding: const EdgeInsets.all(2),
            isClip: false,
            border: index == 0
                ? null
                : Border.all(width: 2, color: ColorRes.pink500),
            child: Stack(
              children: [
                CustomCircleAvatar(
                    size: 60,
                    child: Image.asset(
                      story.profileImg!,
                      fit: BoxFit.cover,
                    )),
                index == 0
                    ? Positioned(
                        right: 0,
                        bottom: 0,
                        child: CustomCircleAvatar(
                          color: ColorRes.blue500,
                          padding: const EdgeInsets.all(2),
                          child: const Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(story.name!)
      ],
    );
  }
}
