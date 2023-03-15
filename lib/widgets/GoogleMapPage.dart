
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  final locationMarkIcon;
  const GoogleMapPage({Key? key, this.locationMarkIcon = locationMarkPinkIcon}) : super(key: key);

  @override
  State<GoogleMapPage> createState() => GoogleMapPageState();
}

//Form byte data from imageand return in Uint8List format
Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
      .buffer
      .asUint8List();
}

class GoogleMapPageState extends State<GoogleMapPage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.187090218083345, 72.79023272212653),
    zoom: 15,
  );

  @override
  void initState() {
    setIcon();
  }

  late BitmapDescriptor mapIcon = BitmapDescriptor.defaultMarker;
  List<Marker> mk = <Marker>[];

  setIcon() async {
    final Uint8List markerIcon = await getBytesFromAsset(widget.locationMarkIcon, 100);
    final icon = BitmapDescriptor.fromBytes(markerIcon);
    setState(() {
      mapIcon = icon;
      mk.add(
        Marker(
          markerId: const MarkerId('SomeId'),
          position: const LatLng(21.187090218083345, 72.79023272212653),
          infoWindow: const InfoWindow(title: 'Marker from Ready rental'),
          icon: icon
        )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) async {
        _controller.complete(controller);
      },
      markers: Set.of(mk),
    );
  }
}
