import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/login_screen/forgotPassword/forgot_password.dart';
import 'package:cam_of_ball/features/login_screen/forgotPassword/new_password.dart';
import 'package:cam_of_ball/features/login_screen/forgotPassword/verification_screen.dart';
import 'package:cam_of_ball/features/login_screen/sign_in/sign_in_screen.dart';
import 'package:cam_of_ball/features/login_screen/sign_up/sign_up_screen.dart';
import 'package:cam_of_ball/features/login_screen/sign_up/sign_up_screen_football_screen.dart';
import 'package:cam_of_ball/features/main_view/bottom_navigation_bar_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/best_player_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/detail_screen/rate_palayer_screen/rate_player_detail_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/detail_screen/rate_palayer_screen/rate_player_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/view_profile_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/chat_group_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_info_screen.dart/chat_info_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/message_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/home_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/live_match_all_screen/live_match_all_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/live_match_all_screen/live_match_screen.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/notification_screen/notification_screen.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/change_password/change_password_screen.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/football_card/football_card_screen.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/location/location_screen.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/location/location_screen_detail.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/payment/payment_screen.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/payment/payment_screen_detail.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/settings/settings_screen.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_detail.screen.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/add_products_cart_screen.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/single_payment_screen.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/detail_review_screen.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_team_screen/detail_team_screen.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_screen.dart';
import 'package:cam_of_ball/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class ppRouter extends _$ppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingRoute.page, initial: true),
        AutoRoute(page: SingInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: FootballRoute.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: VerificationRoute.page),
        AutoRoute(page: NewPasswordRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: BottomNavigatorBarRoute.page),
        AutoRoute(page: FootballCardRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: ChangePasswordRoute.page),
        AutoRoute(page: PaymentRoute.page),
        AutoRoute(page: PaymentRouteDetail.page),
        AutoRoute(page: LocationRoute.page),
        AutoRoute(page: LocationRouteDetail.page),
        AutoRoute(page: ShopRoute.page),
        AutoRoute(page: ShopDetailRoute.page),
        AutoRoute(page: DetailReviewRoute.page),
        AutoRoute(page: DetailTeamRoute.page),
        AutoRoute(page: SinglePaymentRoute.page),
        AutoRoute(page: BestPlayerRoute.page),
        AutoRoute(page: LiveMatchAllRoute.page),
        AutoRoute(page: ViewProfilRoute.page),
        AutoRoute(page: RatePlayerRoute.page),
        AutoRoute(page: RatePlayerDetailRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: ChatGroupRoute.page),
        AutoRoute(page: MessageRoute.page),
        AutoRoute(page: ChatInfoRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: LiveMatchRoute.page),
      ];
}
