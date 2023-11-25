import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/bloc/view_profile_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/bloc/view_profile_screen_state.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/detail_screen/view_profil_about_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/detail_screen/view_profil_post_screen.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/bloc/profil_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/bloc/profil_screen_state.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/widgets/profil_screen_background_container.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/widgets/profil_screen_title.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_icon_back_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ViewProfilScreen extends StatefulWidget {
  const ViewProfilScreen({super.key});

  @override
  State<ViewProfilScreen> createState() => _ViewProfilScreenState();
}

class _ViewProfilScreenState extends State<ViewProfilScreen> with SingleTickerProviderStateMixin {
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
            
              ProfilScreenTile(buttonText: 'Follow',),
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
                      BlocBuilder<ViewProfilScreenBloc, ViewProfilScreenState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 73,
                            child: TabBar(
                              labelColor: AppColors.secondaryColor,
                              labelStyle: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                              controller: _tabController,
                              tabs: const [
                                Tab(text: 'About'),
                                Tab(text: 'Video'),
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
                                Center(child: ViewProfilAboutScreen()),
                                Center(child: ViewProfilPostScreen()),
                                Center(child: ViewProfilPostScreen()),
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
