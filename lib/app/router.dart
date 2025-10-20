import 'package:auto_route/auto_route.dart';
import 'package:gifter/group_list/group_list_page.dart';
import 'package:gifter/home/home_page.dart';
import 'package:gifter/profile/profile_page.dart';
import 'package:gifter/wishlist/wishlist_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';
part 'router.gr.dart';

@riverpod
Raw<AppRouter> router(Ref ref) => AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      initial: true,
      page: HomeRoute.page,
      children: [
        AutoRoute(
          page: WishlistRoute.page,
          path: 'wishlist',
        ),
        AutoRoute(
          page: GroupListRoute.page,
          path: 'groups',
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: 'profile',
        ),
      ],
    ),
  ];
}
