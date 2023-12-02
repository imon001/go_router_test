import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/router/router_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                context.goNamed(MyRouterConstant.startingRouteName);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MaterialButton(
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              GoRouter.of(context).pushNamed(MyRouterConstant.profileRouteName);
            },
            child: const Text('Profile'),
          ),
          MaterialButton(
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              GoRouter.of(context).pushNamed(MyRouterConstant.aboutRouteName);
            },
            child: const Text('About us'),
          ),
          MaterialButton(
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              GoRouter.of(context).pushNamed(MyRouterConstant.aboutRouteName);
            },
            child: const Text('Contact us'),
          ),
        ],
      )),
    );
  }
}
