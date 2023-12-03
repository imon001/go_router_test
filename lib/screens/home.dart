import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/router/router_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.name, required this.id});

  final String name, id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
        actions: [
          IconButton(
              onPressed: () {
                context.goNamed(MyRouterConstant.authRouteName);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Hello $name",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              context.pushNamed(MyRouterConstant.profileRouteName, pathParameters: {"id": id, "name": name});
            },
            child: const Text('Profile'),
          ),
          MaterialButton(
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              context.pushNamed(MyRouterConstant.aboutRouteName);
            },
            child: const Text('About us'),
          ),
          MaterialButton(
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              context.pushNamed(MyRouterConstant.aboutRouteName);
            },
            child: const Text('Contact us'),
          ),
        ],
      )),
    );
  }
}
