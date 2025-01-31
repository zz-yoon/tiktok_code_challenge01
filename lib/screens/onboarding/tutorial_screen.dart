import 'package:flutter/material.dart';
import 'package:tiktok_code_challenge01/constants/gaps.dart';
import 'package:tiktok_code_challenge01/constants/sizes.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v36,
                  Text(
                    "Watch cool videos",
                    style: TextStyle(
                      fontSize: Sizes.size40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gaps.v16,
                  Text(
                    "Videos are personalized for ypu based on what you watc, like, and share",
                    style: TextStyle(
                        fontSize: Sizes.size20, color: Colors.black38),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v36,
                  Text(
                    "Follow rules",
                    style: TextStyle(
                      fontSize: Sizes.size40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gaps.v16,
                  Text(
                    "Videos are personalized for ypu based on what you watc, like, and share",
                    style: TextStyle(
                        fontSize: Sizes.size20, color: Colors.black38),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v36,
                  Text(
                    "Enjoy the ride",
                    style: TextStyle(
                      fontSize: Sizes.size40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gaps.v16,
                  Text(
                    "Videos are personalized for ypu based on what you watc, like, and share",
                    style: TextStyle(
                        fontSize: Sizes.size20, color: Colors.black38),
                  ),
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: SafeArea(
          child: BottomAppBar(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: Sizes.size10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabPageSelector(
                    color: Colors.white,
                    selectedColor: Colors.black38,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
