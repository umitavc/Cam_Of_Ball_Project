import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key, this.title = '', this.elevation = 0});

  String title;
 double elevation;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      
      leading: SvgPicture.asset('assets/svg/home_screen/home_screen/search_normal.svg'),
      hintText: title,
     
      shape: MaterialStateProperty.all(const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
      )),
      hintStyle: MaterialStateProperty.all(AppTextStyles.textFieldStyle),
      elevation: MaterialStateProperty.all(elevation) ,
    );
  }
}