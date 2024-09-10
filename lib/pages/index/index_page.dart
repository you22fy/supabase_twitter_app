import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/app_drawer.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index Page'),
      ),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text('Index Page'),
      ),
    );
  }
}
