import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';


class StoryPageView extends StatelessWidget {
  @override
  final controller = StoryController();

  @override
  Widget build(context) {
    List<StoryItem> storyItems = [
      StoryItem.text(title: "this is me", backgroundColor: Colors.red),
      StoryItem.text(title: "this is me", backgroundColor: Colors.red),
      StoryItem.text(title: "this is me", backgroundColor: Colors.red),
      StoryItem.text(title: "this is me", backgroundColor: Colors.red),



    ]; // your list of stories

    return Material(
        child: StoryView(
          storyItems: storyItems,
          controller: controller, // pass controller here too
          repeat: true, // should the stories be slid forever
          inline: false,
        )
    );
  }
}