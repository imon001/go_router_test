// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:go_router_test/router/router_constant.dart';

// class StartingScreen extends StatelessWidget {
//   const StartingScreen({super.key, required this.isauth});
//   final bool isauth;
//   @override
//   Widget build(BuildContext context) {
//     Widget content = const Scaffold(
//         body: Center(
//       child: CircularProgressIndicator(),
//     ));

//     Future.delayed(const Duration(seconds: 2), () {
//       if (!isauth) {
//         GoRouter.of(context).goNamed(MyRouterConstant.authRouteName);
//       } else {
//         GoRouter.of(context).goNamed(MyRouterConstant.homeRouteName);
//       }
//     });
//     return content;
//   }
// }
