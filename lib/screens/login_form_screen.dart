import 'package:flutter/material.dart';
import 'package:tiktok_code_challenge01/constants/gaps.dart';
import 'package:tiktok_code_challenge01/constants/sizes.dart';
import 'package:tiktok_code_challenge01/full_button.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //submit
  void _onSubmit() {
    _formKey.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size36),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                  validator: (value) {
                    return "i dont like your email";
                  },
                ),
                Gaps.v28,
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  validator: (value) {
                    return "wrong";
                  },
                ),
                Gaps.v28,
                FullButton(
                  text: "Next",
                  textColor: Colors.amber,
                  onTap: _onSubmit,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
