import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/main_view/bloc/bottom_navigator_bar_bloc.dart';
import 'package:cam_of_ball/features/main_view/bottom_navigation_bar_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/home_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/notification_screen/notification_screen.dart';
import 'package:cam_of_ball/features/main_view/view/post_screen/post_screen.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_screen.dart';
import 'package:cam_of_ball/features/main_view/view/social_media_screen/social_media_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



@RoutePage()
// ignore: must_be_immutable
class BottomNavigatorBarScreen extends StatefulWidget {
  const BottomNavigatorBarScreen({super.key});

  @override
  State<BottomNavigatorBarScreen> createState() => _BottomNavigatorBarScreenState();
}

class _BottomNavigatorBarScreenState extends State<BottomNavigatorBarScreen> with AutomaticKeepAliveClientMixin {
  late final HomeScreenBlocBloc _homeScreenBloc;

  late final PageController _pageController;
  final List<Widget> _bottomNavScreen =  <Widget>[
     HomeScreen(),
    const ShopScreen(),
    const PostScreen(),
    const  SocialMediaScreen(),
    const ProfilScreen(),
  ];

  @override
  void initState() {
    _homeScreenBloc = BlocProvider.of<HomeScreenBlocBloc>(context);

    _pageController = PageController(initialPage: _homeScreenBloc.state.tabIndex);
    super.initState();
  }

  @override
  void dispose() {
    // _homeScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: BlocListener<HomeScreenBlocBloc, HomeScreenBlocState>(
          bloc: _homeScreenBloc,
          listenWhen: (previous, current) {
            if (previous.tabIndex != current.tabIndex) {
              return true;
            }
            return false;
          },
          listener: (context, state) {
            _pageController.jumpToPage(state.tabIndex);
          },
          child: PageView.custom(
            controller: _pageController,
            onPageChanged: (index) {
              _homeScreenBloc.add(TabChange(tabIndex: index));
            },
            physics: const NeverScrollableScrollPhysics(),
            childrenDelegate: SliverChildListDelegate.fixed(_bottomNavScreen),
          ),
        ),
        bottomNavigationBar: CoreBottomNavigationBarWidget(),);
  }

  @override
  bool get wantKeepAlive => true;
}
