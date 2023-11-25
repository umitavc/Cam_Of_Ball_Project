import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/widgets/group_info_widget.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/bloc/profil_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/bloc/profil_screen_state.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/widgets/profil_screen_about.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/widgets/profil_screen_background_container.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/widgets/profil_screen_football_card.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/widgets/profil_screen_post.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/widgets/profil_screen_title.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_icon_back_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        const ProfilScreenBackgroundWidget(),
          Column(
            children: [
             
              ProfilScreenTile(buttonText: 'Edit Profile',isAvctive: false,),
              Expanded(
                flex: 6,
                child: Container(
                  width: context.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), 
                      topRight: Radius.circular(20), 
                    ),
                  ),
                  child: Column(
                    children: [
                      BlocBuilder<ProfilScreenBloc, ProfilScreenState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 73,
                            child: TabBar(
                              labelColor: AppColors.secondaryColor,
                              labelStyle: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                              controller: _tabController,
                              tabs: const [
                                Tab(text: 'About'),
                                Tab(text: 'Football Card'),
                                Tab(text: 'Posts'),
                              ],
                            ),
                          );
                        },
                      ),
                      Expanded(
                        child: BlocBuilder<ProfilScreenBloc, ProfilScreenState>(
                          builder: (context, state) {
                            return TabBarView(
                              controller: _tabController,
                              children: const [
                                Center(child: ProfilScreenAbout()),
                                Center(child: ProfilScreenFototballCard()),
                                Center(child: ProfilScreenPost()),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
