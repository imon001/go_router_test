import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/router/router_constant.dart';
import 'package:go_router_test/screens/about.dart';
import 'package:go_router_test/screens/auth/auth.dart';
import 'package:go_router_test/screens/contact_us.dart';
import 'package:go_router_test/screens/home.dart';
import 'package:go_router_test/screens/profile.dart';
import 'package:go_router_test/screens/starting_screen/starting_screen.dart';

import '../screens/error.dart';

final myRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: MyRouterConstant.startingRouteName,
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(
          child: StartingScreen(
        isauth: false,
      )),
    ),
    GoRoute(
      name: MyRouterConstant.authRouteName,
      path: '/auth',
      pageBuilder: (context, state) => const MaterialPage(child: Auth()),
    ),
    GoRoute(
      name: MyRouterConstant.homeRouteName,
      path: '/home',
      pageBuilder: (context, state) => const MaterialPage(child: Home()),
    ),
    GoRoute(
      name: MyRouterConstant.profileRouteName,
      path: '/home/profile',
      pageBuilder: (context, state) => const MaterialPage(child: Profile()),
    ),
    GoRoute(
      name: MyRouterConstant.aboutRouteName,
      path: '/home/about',
      pageBuilder: (context, state) => const MaterialPage(child: About()),
    ),
    GoRoute(
      name: MyRouterConstant.contactRouteName,
      path: '/home/contact',
      pageBuilder: (context, state) => const MaterialPage(child: ContactUs()),
    ),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(
        child: ErrorScreen(
      error: state.error.toString(),
    ));
  },
);
