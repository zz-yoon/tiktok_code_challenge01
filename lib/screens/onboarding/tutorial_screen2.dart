import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_code_challenge01/constants/gaps.dart';
import 'package:tiktok_code_challenge01/constants/sizes.dart';

enum Direction { right, left }

enum Page { first, second }

class TutorialScreen2 extends StatefulWidget {
  const TutorialScreen2({super.key});

  @override
  State<TutorialScreen2> createState() => _TutorialScreen2State();
}

class _TutorialScreen2State extends State<TutorialScreen2> {
  Direction _direction = Direction.right;
  Page _showPage = Page.first;

  void _onPanUpdate(DragUpdateDetails details) {
    print(details);
    if (details.delta.dx > 0) {
      setState(() {
        _direction = Direction.right;
      });
    } else {
      setState(() {
        _direction = Direction.left;
      });
    }
  }

  void _onPanEnd(DragEndDetails detail) {
    if (_direction == Direction.left) {
      setState(() {
        _showPage = Page.second;
      });
    } else {
      setState(() {
        _showPage = Page.first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
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
              crossFadeState: _showPage == Page.first
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 300),
            ),
          ),
          bottomNavigationBar: SafeArea(
            child: BottomAppBar(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Sizes.size1,
                    horizontal: Sizes.size1,
                  ),
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 3),
                    opacity: _showPage == Page.first ? 0 : 1,
                    child: CupertinoButton(
                        child: Text("Enter the app!",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        onPressed: () {},
                        color: Theme.of(context).primaryColor),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
