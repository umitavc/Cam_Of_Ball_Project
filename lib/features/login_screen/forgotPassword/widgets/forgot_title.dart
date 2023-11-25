import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotTitle extends StatelessWidget {
   ForgotTitle({super.key, this.imagePath='', this.title=''});

  String imagePath;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(imagePath),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              title,
              style:AppTextStyles.textFieldStyle,
            ),
          ),
        ],
      ),
    );
  }
}


//'assets/svg/login/forgot_password.svg'
//'To reset your password, enter your registered e-mail address.'
