import 'package:flutter/material.dart';
import 'package:flutter_app/provider/list_view_model_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listViewModel = ref.watch(listViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              context.go('/login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listViewModel.keyList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.key),
                title: Text(listViewModel.keyList[index]),
              ),
              const Divider(height: 0),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          listViewModel.addToList('Apple');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
