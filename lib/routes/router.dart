part of "Route_import.dart";

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: DashBoardRoute.page, children: [
      AutoRoute(page: HomeScreenRoute.page, path: "HomeScreen"),
      AutoRoute(page: ReelSearchRoute.page, path: "ReelSearch"),
      AutoRoute(page: UploadReelRoute.page, path: "UploadScreen"),
      AutoRoute(page: WatchReelRoute.page, path: "WatchReel"),
      AutoRoute(page: UserProfileRoute.page, path: "UserProfile"),
    ])
  ];
}
