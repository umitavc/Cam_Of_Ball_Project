import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/bloc/chat_group_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/bloc/chat_group_screen_state.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/widgets/active_players_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/widgets/chat_group_invite_link_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/widgets/group_info_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/widgets/members_widget.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_icon_back_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ChatInfoScreen extends StatefulWidget {
  const ChatInfoScreen({super.key});

  @override
  State<ChatInfoScreen> createState() => _ChatInfoScreenState();
}

class _ChatInfoScreenState extends State<ChatInfoScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
             color: Color(0xff1027E5),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconBackButton(
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
              const GroupInfoWidget(),

             const InviteLink(),
              Expanded(
                flex: 6,
                child: Container(
                  width: context.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    
                  ),
                  child: Column(
                    children: [
                      BlocBuilder<ChatGroupBloc, ChatGroupState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 73,
                            child: TabBar(
                              labelColor: AppColors.secondaryColor,
                              unselectedLabelColor: Colors.black,
                              labelStyle: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                              controller: _tabController,
                              tabs: [
                                Tab(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8),
                                        child: SvgPicture.asset(
                                          'assets/svg/chat/user.svg',
                                          colorFilter: ColorFilter.mode(_tabController.index == 0 ? AppColors.secondaryColor : Colors.black, BlendMode.srcIn),
                                        ),
                                      ),
                                      const Text('Members'),
                                    ],
                                  ),
                                ),
                                const Tab(
                                  child: Text('Active players'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Expanded(
                        child: BlocBuilder<ChatGroupBloc, ChatGroupState>(
                          builder: (context, state) {
                            return TabBarView(
                              controller: _tabController,
                              children: const [
                                Center(child: MembersWidget()),
                                Center(child: ActivePlayersWidget()),
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
