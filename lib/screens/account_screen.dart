
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_code_challenge01/common_button.dart';
import 'package:tiktok_code_challenge01/constants/gaps.dart';
import 'package:tiktok_code_challenge01/constants/sizes.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  final TextEditingController _userNameController  = TextEditingController();
  String _userName = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _userNameController.addListener(() {
      print(_userNameController.text);
      setState(() {
        _userName = _userNameController.text;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Icon(
          FontAwesomeIcons.twitter,
          color: Colors.lightBlue,
          size: 30.0,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(child:
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.size36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v40,
                  Text("Create your account",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Gaps.v16,
                  TextField(
                    controller: _userNameController,
                    decoration: InputDecoration(
                      hintText: "Name",
                      enabledBorder: UnderlineInputBorder(
                        borderSide : BorderSide(color: Colors.grey.shade400),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide : BorderSide(color: Colors.grey.shade400),
                      ),
                    ),
                    cursorColor: Theme.of(context).primaryColor,
                  ),
                  Gaps.v28,
                  CommonButton(
                    text: "Next",
                    textColor: Colors.white,
                    backgroundColor: _userName.isEmpty
                        ? Colors.grey.shade300
                        : Colors.greenAccent,
                    borderColor: _userName.isEmpty
                        ? Colors.grey.shade300
                        : Colors.greenAccent,
                    isEnabled: _userName.isNotEmpty,
                    onTap: _userName.isNotEmpty
                        ? () {
                      //아직미정
                    }
                        : null, // 비활성화 상태에서는 동작하지 않음
                  ),
                  // FractionallySizedBox(
                  //   widthFactor: 1,
                  //   child : AnimatedContainer(
                  //     duration: Duration(milliseconds :2),
                  //     padding: const EdgeInsets.symmetric(vertical:Sizes.size16),
                  //     decoration: BoxDecoration(
                  //       color: _userName.isEmpty ? Colors.grey.shade300 : Colors.greenAccent,
                  //       borderRadius: BorderRadius.circular(Sizes.size16),
                  //     ),
                  //     child: AnimatedDefaultTextStyle(
                  //       duration: Duration(milliseconds: 2),
                  //       style: TextStyle(
                  //         color: _userName.isEmpty ? Colors.grey.shade400 :  Colors.white,
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //       child: Text(
                  //         "Next",
                  //         textAlign: TextAlign.center,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
