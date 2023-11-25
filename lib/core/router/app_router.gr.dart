// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$ppRouter extends RootStackRouter {
  // ignore: unused_element
  _$ppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddProductCartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddProductCartScreen(),
      );
    },
    BestPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<BestPlayerRouteArgs>(
          orElse: () => const BestPlayerRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BestPlayerScreen(key: args.key),
      );
    },
    BottomNavigatorBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigatorBarScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangePasswordScreen(),
      );
    },
    ChatGroupRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatGroupScreen(),
      );
    },
    ChatInfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatInfoScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatScreen(),
      );
    },
    DetailReviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailReviewScreen(),
      );
    },
    DetailTeamRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailTeamScreen(),
      );
    },
    FootballCardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FootballCardScreen(),
      );
    },
    FootballRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FootballScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LiveMatchAllRoute.name: (routeData) {
      final args = routeData.argsAs<LiveMatchAllRouteArgs>(
          orElse: () => const LiveMatchAllRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LiveMatchAllScreen(key: args.key),
      );
    },
    LiveMatchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LiveMatchScreen(),
      );
    },
    LocationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LocationScreen(),
      );
    },
    LocationRouteDetail.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LocationScreenDetail(),
      );
    },
    MessageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MessageScreen(),
      );
    },
    NewPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewPasswordScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaymentScreen(),
      );
    },
    PaymentRouteDetail.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaymentScreenDetail(),
      );
    },
    RatePlayerDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RatePlayerDetailScreen(),
      );
    },
    RatePlayerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RatePlayerScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    ShopDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShopDetailScreen(),
      );
    },
    ShopRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShopScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    SingInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SingInScreen(),
      );
    },
    SinglePaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SinglePaymentScreen(),
      );
    },
    VerificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VerificationScreen(),
      );
    },
    ViewProfilRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ViewProfilScreen(),
      );
    },
  };
}

/// generated route for
/// [AddProductCartScreen]
class AddProductCartRoute extends PageRouteInfo<void> {
  const AddProductCartRoute({List<PageRouteInfo>? children})
      : super(
          AddProductCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddProductCartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BestPlayerScreen]
class BestPlayerRoute extends PageRouteInfo<BestPlayerRouteArgs> {
  BestPlayerRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          BestPlayerRoute.name,
          args: BestPlayerRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BestPlayerRoute';

  static const PageInfo<BestPlayerRouteArgs> page =
      PageInfo<BestPlayerRouteArgs>(name);
}

class BestPlayerRouteArgs {
  const BestPlayerRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BestPlayerRouteArgs{key: $key}';
  }
}

/// generated route for
/// [BottomNavigatorBarScreen]
class BottomNavigatorBarRoute extends PageRouteInfo<void> {
  const BottomNavigatorBarRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigatorBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChangePasswordScreen]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute({List<PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatGroupScreen]
class ChatGroupRoute extends PageRouteInfo<void> {
  const ChatGroupRoute({List<PageRouteInfo>? children})
      : super(
          ChatGroupRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatGroupRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatInfoScreen]
class ChatInfoRoute extends PageRouteInfo<void> {
  const ChatInfoRoute({List<PageRouteInfo>? children})
      : super(
          ChatInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatInfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatScreen]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailReviewScreen]
class DetailReviewRoute extends PageRouteInfo<void> {
  const DetailReviewRoute({List<PageRouteInfo>? children})
      : super(
          DetailReviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailReviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailTeamScreen]
class DetailTeamRoute extends PageRouteInfo<void> {
  const DetailTeamRoute({List<PageRouteInfo>? children})
      : super(
          DetailTeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailTeamRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FootballCardScreen]
class FootballCardRoute extends PageRouteInfo<void> {
  const FootballCardRoute({List<PageRouteInfo>? children})
      : super(
          FootballCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'FootballCardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FootballScreen]
class FootballRoute extends PageRouteInfo<void> {
  const FootballRoute({List<PageRouteInfo>? children})
      : super(
          FootballRoute.name,
          initialChildren: children,
        );

  static const String name = 'FootballRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LiveMatchAllScreen]
class LiveMatchAllRoute extends PageRouteInfo<LiveMatchAllRouteArgs> {
  LiveMatchAllRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LiveMatchAllRoute.name,
          args: LiveMatchAllRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LiveMatchAllRoute';

  static const PageInfo<LiveMatchAllRouteArgs> page =
      PageInfo<LiveMatchAllRouteArgs>(name);
}

class LiveMatchAllRouteArgs {
  const LiveMatchAllRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LiveMatchAllRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LiveMatchScreen]
class LiveMatchRoute extends PageRouteInfo<void> {
  const LiveMatchRoute({List<PageRouteInfo>? children})
      : super(
          LiveMatchRoute.name,
          initialChildren: children,
        );

  static const String name = 'LiveMatchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LocationScreen]
class LocationRoute extends PageRouteInfo<void> {
  const LocationRoute({List<PageRouteInfo>? children})
      : super(
          LocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LocationScreenDetail]
class LocationRouteDetail extends PageRouteInfo<void> {
  const LocationRouteDetail({List<PageRouteInfo>? children})
      : super(
          LocationRouteDetail.name,
          initialChildren: children,
        );

  static const String name = 'LocationRouteDetail';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MessageScreen]
class MessageRoute extends PageRouteInfo<void> {
  const MessageRoute({List<PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewPasswordScreen]
class NewPasswordRoute extends PageRouteInfo<void> {
  const NewPasswordRoute({List<PageRouteInfo>? children})
      : super(
          NewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentScreen]
class PaymentRoute extends PageRouteInfo<void> {
  const PaymentRoute({List<PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentScreenDetail]
class PaymentRouteDetail extends PageRouteInfo<void> {
  const PaymentRouteDetail({List<PageRouteInfo>? children})
      : super(
          PaymentRouteDetail.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRouteDetail';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RatePlayerDetailScreen]
class RatePlayerDetailRoute extends PageRouteInfo<void> {
  const RatePlayerDetailRoute({List<PageRouteInfo>? children})
      : super(
          RatePlayerDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatePlayerDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RatePlayerScreen]
class RatePlayerRoute extends PageRouteInfo<void> {
  const RatePlayerRoute({List<PageRouteInfo>? children})
      : super(
          RatePlayerRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatePlayerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShopDetailScreen]
class ShopDetailRoute extends PageRouteInfo<void> {
  const ShopDetailRoute({List<PageRouteInfo>? children})
      : super(
          ShopDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShopScreen]
class ShopRoute extends PageRouteInfo<void> {
  const ShopRoute({List<PageRouteInfo>? children})
      : super(
          ShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SingInScreen]
class SingInRoute extends PageRouteInfo<void> {
  const SingInRoute({List<PageRouteInfo>? children})
      : super(
          SingInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SingInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SinglePaymentScreen]
class SinglePaymentRoute extends PageRouteInfo<void> {
  const SinglePaymentRoute({List<PageRouteInfo>? children})
      : super(
          SinglePaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'SinglePaymentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VerificationScreen]
class VerificationRoute extends PageRouteInfo<void> {
  const VerificationRoute({List<PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ViewProfilScreen]
class ViewProfilRoute extends PageRouteInfo<void> {
  const ViewProfilRoute({List<PageRouteInfo>? children})
      : super(
          ViewProfilRoute.name,
          initialChildren: children,
        );

  static const String name = 'ViewProfilRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
