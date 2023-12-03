import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.error});
  final String error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(error),
            MaterialButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: const Text('Ok'),
            )
          ],
        ),
      ),
    );
  }
}
