
import 'package:flutter/material.dart';
import 'package:tiktok_code_challenge01/common_button.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(child:
      Column(

      ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CommonButton(
              text: "Next",
              textColor: Colors.white,
              backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
