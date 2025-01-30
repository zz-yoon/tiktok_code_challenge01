import 'package:flutter/material.dart';
import 'package:tiktok_code_challenge01/constants/gaps.dart';
import 'package:tiktok_code_challenge01/constants/sizes.dart';
import 'package:tiktok_code_challenge01/full_button.dart';
import 'package:tiktok_code_challenge01/screens/onboarding/interests_screen.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map<String, String> formData = {};

  //submit
  void _onSubmit() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        //print(formData.values);
        //완료가 되면 페이지 이동
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const InterestsScreen()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                      if (value != null && value.isNotEmpty) {
                        return "Please write your email";
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      //newValue가 null일수도 있는 String 이기 때문에
                      if (newValue != null) {
                        formData['email'] = newValue;
                      }
                    },
                  ),
                  Gaps.v28,
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        return "Please write your password";
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      if (newValue != null) {
                        formData['password'] = newValue;
                      }
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
      ),
    );
  }
}
