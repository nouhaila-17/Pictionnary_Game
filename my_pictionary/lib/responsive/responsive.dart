import 'package:flutter/material.dart';

// constraint the widget so they don't extend too much if it's extendable
class Responsive extends StatelessWidget {
  //accept the child
  final Widget child;
  const Responsive({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: child, //getting the child
      ),
    );
  }
}
