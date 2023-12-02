import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/router/router_constant.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth'),
      ),
      body: SafeArea(
          child: Center(
        child: MaterialButton(
          color: Theme.of(context).colorScheme.primary,
          onPressed: () {
            context.goNamed(MyRouterConstant.homeRouteName);
          },
          child: const Text('Authenticate'),
        ),
      )),
    );
  }
}
