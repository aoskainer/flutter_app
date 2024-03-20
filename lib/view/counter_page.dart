import 'package:flutter/material.dart';
import 'package:flutter_app/view_model/counter_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterViewModel = ref.watch(counterViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ref.read(counterViewModelProvider.notifier).reset();
              context.go('/pokemon');
            },
            icon: const Icon(Icons.manage_search),
          ),
          IconButton(
            onPressed: () {
              ref.read(counterViewModelProvider.notifier).reset();
              context.push('/list');
            },
            icon: const Icon(Icons.list_alt),
          ),
          IconButton(
            onPressed: () {
              ref.read(counterViewModelProvider.notifier).reset();
              context.go('/login');
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterViewModel.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterViewModelProvider.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
