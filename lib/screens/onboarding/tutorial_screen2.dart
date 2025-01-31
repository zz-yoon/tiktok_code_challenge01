import 'package:flutter/material.dart';
import 'package:tiktok_code_challenge01/constants/gaps.dart';
import 'package:tiktok_code_challenge01/constants/sizes.dart';

class TutorialScreen2 extends StatefulWidget {
  const TutorialScreen2({super.key});

  @override
  State<TutorialScreen2> createState() => _TutorialScreen2State();
}

class _TutorialScreen2State extends State<TutorialScreen2> {
  void _onPanUpdate(DragDownDetails details) {
    print(details);
    if (details.delta.dx > 0) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _onPanUpdate,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
            child: AnimatedCrossFade(
              firstChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v80,
                  Text("Watch cool videos",
                      style: TextStyle(
                        fontSize: Sizes.size40,
                        fontWeight: FontWeight.bold,
                      )),
                  Gaps.v16,
                  Text(
                    "Videos are personalized for you based on what you watch, like, and share",
                    style: TextStyle(
                      fontSize: Sizes.size20,
                    ),
                  ),
                ],
              ),
              secondChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v80,
                  Text("Follow rules",
                      style: TextStyle(
                        fontSize: Sizes.size40,
                        fontWeight: FontWeight.bold,
                      )),
                  Gaps.v16,
                  Text(
                    "Videos are personalized for you based on what you watch, like, and share",
                    style: TextStyle(
                      fontSize: Sizes.size20,
                    ),
                  ),
                ],
              ),
              crossFadeState: CrossFadeState.showFirst,
              duration: Duration(milliseconds: 300),
            ),
          ),
        ),
      ),
    );
  }
}
