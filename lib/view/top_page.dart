import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<TopPageIconRoute> items = [
      TopPageIconRoute(
        icon: Icons.plus_one_rounded,
        buttonText: 'カウンター',
        route: '/counter',
      ),
      TopPageIconRoute(
        icon: Icons.list_alt,
        buttonText: 'リスト',
        route: '/list',
      ),
      TopPageIconRoute(
        icon: Icons.catching_pokemon,
        buttonText: 'ポケモン',
        route: '/pokemon',
      ),
      TopPageIconRoute(
        icon: Icons.map_outlined,
        buttonText: 'Google Map',
        route: '/googleMap',
      ),
      TopPageIconRoute(
        icon: Icons.ad_units_outlined,
        buttonText: 'バナー広告',
        route: '/googleAdmobBanner',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () => context.go('/login'),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    items[index].icon,
                    size: 32,
                  ),
                  const Padding(padding: EdgeInsets.all(4)),
                  Text(
                    items[index].buttonText,
                    style: const TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
            onTap: () => context.push(items[index].route),
          );
        },
      ),
    );
  }
}

class TopPageIconRoute {
  TopPageIconRoute({
    required this.icon,
    required this.buttonText,
    required this.route,
  });
  final IconData icon;
  final String buttonText;
  final String route;
}
