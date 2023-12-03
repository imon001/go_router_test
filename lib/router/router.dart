// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/router/router_constant.dart';
import 'package:go_router_test/screens/about.dart';
import 'package:go_router_test/screens/auth/auth.dart';
import 'package:go_router_test/screens/contact_us.dart';
import 'package:go_router_test/screens/home.dart';
import 'package:go_router_test/screens/profile.dart';
//import 'package:go_router_test/screens/starting_screen/starting_screen.dart';

import '../screens/error.dart';

class AppRouter {
  static GoRouter returnRouter(bool isAuth) {
    final myRouter = GoRouter(
        initialLocation: '/',
        routes: [
          // GoRoute(
          //   name: MyRouterConstant.startingRouteName,
          //   path: '/',
          //   pageBuilder: (context, state) => const MaterialPage(
          //       child: StartingScreen(
          //     isauth: false,
          //   )),
          // ),
          GoRoute(
            name: MyRouterConstant.homeRouteName,
            path: '/home/:name/:id',
            pageBuilder: (context, state) => MaterialPage(
                child: Home(
              id: state.pathParameters['id']!,
              name: state.pathParameters['name']!,
            )),
          ),
          GoRoute(
            name: MyRouterConstant.authRouteName,
            path: '/auth',
            pageBuilder: (context, state) => const MaterialPage(child: Auth()),
          ),
          GoRoute(
            name: MyRouterConstant.profileRouteName,
            path: '/home/profile/:name/:id',
            pageBuilder: (context, state) => MaterialPage(
                child: Profile(
              id: state.pathParameters["id"]!,
              name: state.pathParameters["name"]!,
            )),
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
        redirect: (context, state) async {
          bool isAuth = true;

          if (!isAuth || state.matchedLocation == '/' || state.matchedLocation == '/home' || state.matchedLocation == '/home/profile') {
            return state.namedLocation(MyRouterConstant.authRouteName);
          }
          return null;
        });

    return myRouter;
  }
}
