import 'package:flutter/material.dart';
import 'package:flutter_app/view_model/google_map_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends ConsumerWidget {
  const GoogleMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final googleMapViewModel = ref.watch(googleMapViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('マップ'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () => context.go('/login'),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('東京'),
                    onPressed: () {
                      ref.read(googleMapViewModelProvider.notifier).reset();
                    },
                  ),
                  ElevatedButton(
                    child: const Text('大阪'),
                    onPressed: () {
                      ref
                          .read(googleMapViewModelProvider.notifier)
                          .updateLocationToOsaka();
                    },
                  ),
                  ElevatedButton(
                    child: const Text('福岡'),
                    onPressed: () {
                      ref
                          .read(googleMapViewModelProvider.notifier)
                          .updateLocationToFukuoka();
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  googleMapViewModel.latitude,
                  googleMapViewModel.longitude,
                ),
                zoom: 15,
              ),
              onMapCreated: (controller) {
                // TODO: controllerをねじ変えてボタンを押したら地図が移動するようにする
              },
            ),
          ),
        ],
      ),
    );
  }
}
