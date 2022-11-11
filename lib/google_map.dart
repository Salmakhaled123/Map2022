import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget
{
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}
class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:
    const Text('google map')),
      body: const GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(target:
          LatLng(30.033333, 31.233334
          ))),);
  }
}
