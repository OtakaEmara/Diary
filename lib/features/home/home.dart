import 'package:diary/core/helpers/extension.dart';
import 'package:flutter/material.dart';

import '../../core/routing/routing_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(RoutingConstant.writeNotes);
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
