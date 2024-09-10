import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/debug_router_list.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index Page'),
      ),
      drawer: kDebugMode
          ? const Drawer(
              child: DebugRouterList(),
            )
          : null,
      body: const Center(
        child: Text('Index Page'),
      ),
    );
  }
}
