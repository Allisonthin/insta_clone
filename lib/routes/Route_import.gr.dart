// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:insta_clone/src/__dashboard_module/pages/dashboardPage.dart'
    as _i6;
import 'package:insta_clone/src/__signup_module/pages/signup_screen.dart'
    as _i7;
import 'package:insta_clone/src/__user_Profile_module/pages/profile.dart'
    as _i8;
import 'package:insta_clone/src/__user_Profile_module/widgets/editProfile.dart'
    as _i9;
import 'package:insta_clone/src/_login_module/pages/login_screen.dart' as _i5;
import 'package:insta_clone/src/home_module/pages/home.dart' as _i1;
import 'package:insta_clone/src/Reels_Modules/pages/WatchReel.dart' as _i2;
import 'package:insta_clone/src/Search_Module/pages/ReelSearch.dart' as _i3;
import 'package:insta_clone/src/Upload_Reel_Modules/pages/uploadReel.dart'
    as _i4;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreenPage(),
      );
    },
    WatchReelRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.WatchReelPage(),
      );
    },
    ReelSearchRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ReelSearchPage(),
      );
    },
    UploadReelRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.UploadReelPage(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    DashBoardRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DashBoardPage(),
      );
    },
    SignupScreen.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignupScreen(),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.UserProfilePage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.EditProfilePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreenPage]
class HomeScreenRoute extends _i10.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.WatchReelPage]
class WatchReelRoute extends _i10.PageRouteInfo<void> {
  const WatchReelRoute({List<_i10.PageRouteInfo>? children})
      : super(
          WatchReelRoute.name,
          initialChildren: children,
        );

  static const String name = 'WatchReelRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ReelSearchPage]
class ReelSearchRoute extends _i10.PageRouteInfo<void> {
  const ReelSearchRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ReelSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReelSearchRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.UploadReelPage]
class UploadReelRoute extends _i10.PageRouteInfo<void> {
  const UploadReelRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UploadReelRoute.name,
          initialChildren: children,
        );

  static const String name = 'UploadReelRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginScreen extends _i10.PageRouteInfo<void> {
  const LoginScreen({List<_i10.PageRouteInfo>? children})
      : super(
          LoginScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreen';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DashBoardPage]
class DashBoardRoute extends _i10.PageRouteInfo<void> {
  const DashBoardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignupScreen]
class SignupScreen extends _i10.PageRouteInfo<void> {
  const SignupScreen({List<_i10.PageRouteInfo>? children})
      : super(
          SignupScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignupScreen';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.UserProfilePage]
class UserProfileRoute extends _i10.PageRouteInfo<void> {
  const UserProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.EditProfilePage]
class EditProfileRoute extends _i10.PageRouteInfo<void> {
  const EditProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
