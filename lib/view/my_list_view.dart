import 'package:flutter/material.dart';
import 'package:flutter_app/provider/main_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyListView extends ConsumerWidget {
  const MyListView({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myListViewModel = ref.watch(myListViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: myListViewModel.keyList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.key),
                title: Text(myListViewModel.keyList[index]),
              ),
              const Divider(height: 0),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myListViewModel.addToList('Apple');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
