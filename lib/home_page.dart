import 'package:flutter/material.dart';
import 'package:gebetamap/gebetamap.dart';
import 'package:hello_balemuya/map/map_integration.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var points = [
              {'lat': 9.005980058445639, 'lon': 38.785734616513466},
              {'lat': 9.01166345564756, 'lon': 38.789008246478424},
            ];

            ResponseData response = await MapIntegration.getRoute(points);
            if (response.status == 'OK') {
              Text("Response message: ${response.message}");
              print('Path: ${response.path}');
              print('Total distance: ${response.totalDistance}');
            } else {
              print('Error: ${response.message}');
              Text("Error: ${response.message}");
            }
          },
          child: const Text('Fetch Route'),
        ),
      ),
    );
  }
}
