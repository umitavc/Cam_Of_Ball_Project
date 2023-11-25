import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InviteLink extends StatelessWidget {
  const InviteLink({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
                
                child: Container(
                  width: context.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16,top: 15, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text('Invite Link',style: AppTextStyles.blackTextStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w400),),
                        ),
                         Row(children: [
                          Expanded(
                            flex: 7,
                            child: SizedBox(
                              
                            child: Text('https://jkslsdcmlsDKE',style: AppTextStyles.hinttextStyle.copyWith(fontWeight: FontWeight.w500),),
                          
                            ),
                          ),
                          Expanded( flex: 3, child: SvgPicture.asset('assets/svg/chat/note.svg')),
                        ],),
                      
                      ],),
                    ),
                ),
              );
  }
}