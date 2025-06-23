import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

/// Mapboxの地図を表示する画面
class MapboxScreen extends StatefulWidget {
  const MapboxScreen({super.key});

  @override
  State<MapboxScreen> createState() => _MapboxScreenState();
}

class _MapboxScreenState extends State<MapboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapWidget(
        // 初期カメラ設定
        cameraOptions: CameraOptions(
          // 地図の中心座標
          center: Point(coordinates: Position(139.7671, 35.6812)),
          // ズームレベル
          zoom: 14.0,
        ),
      ),
    );
  }
}
