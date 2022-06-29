import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:object_detector_app/screens/object_detector.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Object Detector App',
      debugShowCheckedModeBanner: false,
      home: ObjectDetectorView(),
    );
  }
}
