import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class ProductPaymetCard extends StatelessWidget {
  const ProductPaymetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(flex: 4, child: Center(child: Image.asset('assets/png/product.png'))),
            Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Arsenal uniform', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text('Miami, California', maxLines: 2, overflow: TextOverflow.ellipsis, style: AppTextStyles.blackTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          Text('Date:', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
                          Text('29Jun, Friday', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text('Time:', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
                        Text('12:00 PM - 02:00 PM', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                )),
          ],
        )
      ],
    );
  }
}
