
import 'package:flutter/material.dart';
import 'package:tiktok_code_challenge01/constants/gaps.dart';
import 'package:tiktok_code_challenge01/constants/sizes.dart';

class CommonButton extends StatelessWidget {
  final String text; //
  final Color textColor;
  final IconData? icon;
  final Color? borderColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final bool? isEnabled;

  const CommonButton({super.key, required this.text, required this.textColor, this.icon, this.borderColor, this.backgroundColor, this.onTap, this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled! ? onTap : null,
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: Sizes.size16),
          decoration: BoxDecoration(
              color: isEnabled! ? (backgroundColor ?? Colors.white) : Colors.grey.shade200,
              border: Border.all(
                color: isEnabled! ? (borderColor ?? Colors.grey.shade300) : Colors.grey.shade400,
                width: Sizes.size1,
              ),
            borderRadius: BorderRadius.circular(Sizes.size32),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(icon != null)...[
                  Icon(
                    icon,
                    color: isEnabled! ? textColor : Colors.grey,
                    size: Sizes.size20,
                  ),
                  Gaps.h10,
                ],
                Text(
                  text,
                  style: TextStyle(
                    color: isEnabled! ? textColor : Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
