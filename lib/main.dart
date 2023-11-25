import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/bloc/bottom_navigator_bar_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/bloc/view_profile_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/bloc/chat_group_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/bloc/profil_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/bloc/product_add_cart_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/bloc/detail_product_screen_bloc.dart';
import 'package:cam_of_ball/injection/injection_container.dart';
import 'package:cam_of_ball/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = ppRouter();
    
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeScreenBlocBloc>(
          create: (_) => HomeScreenBlocBloc(),
        ),
        BlocProvider<ProfilScreenBloc>(
          create: (_) => ProfilScreenBloc(),
        ),
        BlocProvider<DetailProductScreenBloc>(
          create: (_) => DetailProductScreenBloc(),
        ),
        BlocProvider<ProductAddCartBloc>(
          create: (_) => ProductAddCartBloc(),
        ),
         BlocProvider<ViewProfilScreenBloc>(
          create: (_) => ViewProfilScreenBloc(),
        ),
        BlocProvider<ChatGroupBloc>(
          create: (_) => ChatGroupBloc(),
        ),
        
        // Diğer BlocProvider'ları buraya ekleyin.
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().themeData,
        //home: const OnboardingScreen(),
        routerConfig: appRouter.config(),
      ),
    );
  }
}
