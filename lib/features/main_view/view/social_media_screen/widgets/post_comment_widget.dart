import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostCommentWidget extends StatelessWidget {
  const PostCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('User Name',style: AppTextStyles.textStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w600),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text('User Name',style: AppTextStyles.textStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),),
              ),
            ],
          ),
          
          SizedBox(child: SvgPicture.asset('assets/svg/shop_screen/heart.svg',height: 13,width: 13,),),
        ],
      );
    },);
  }
}
