import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gifter/authentication/authentication_page.dart';
import 'package:gifter/authentication/authentication_repository.dart';
import 'package:gifter/group_list/group_list_page.dart';
import 'package:gifter/home/home_page.dart';
import 'package:gifter/profile/profile_page.dart';
import 'package:gifter/signup/signup_page.dart';
import 'package:gifter/wishlist/wishlist_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';
part 'router.gr.dart';

@riverpod
Raw<AppRouter> router(Ref ref) => AppRouter(authenticated: ref.read(authenticationRepositoryProvider).authenticated);

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({required ValueGetter<bool> authenticated}) : _authenticated = authenticated;

  final ValueGetter<bool> _authenticated;

  @override
  List<AutoRoute> get routes => [
    AutoRoute.guarded(
      onNavigation: _onAuthNavigation,
      page: AuthenticationRoute.page,
      children: [AutoRoute(page: SignupRoute.page)],
    ),
    AutoRoute.guarded(
      onNavigation: _onHomeNavigation,
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

  Future<void> _onHomeNavigation(NavigationResolver resolver, StackRouter router) async {
    if (_authenticated()) {
      resolver.next();
    } else {
      await resolver.redirectUntil(const AuthenticationRoute());
    }
  }

  Future<void> _onAuthNavigation(NavigationResolver resolver, StackRouter router) async {
    if (_authenticated()) {
      await resolver.redirectUntil(const HomeRoute());
    } else {
      resolver.next();
    }
  }
}
