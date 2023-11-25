import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/widgets/custom_container_widget.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class SizeComponent extends StatelessWidget {
  const SizeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Size', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainerWidget(
                    title: 'S',
                  ),
                  CustomContainerWidget(
                    title: 'M',
                  ),
                  CustomContainerWidget(
                    title: 'L',
                  ),
                  CustomContainerWidget(
                    title: 'XL',
                  ),
                  CustomContainerWidget(
                    title: 'XLL',
                  ),
                  CustomContainerWidget(
                    title: 'S',
                  ),CustomContainerWidget(
                    title: 'S',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text('Specifications', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
          Row(
            children: [
              Text('Material-', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
              Text('Urban', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
          Row(
            children: [
              Text('Gender-', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
              Text('Male', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
          Row(
            children: [
              Text('Color-', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
              Text('Red', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
        ],
      ),
    );
  }
}
