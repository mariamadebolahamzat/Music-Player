import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_player/ui/playing.dart';
import 'package:music_player/ui/playlist.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Playlist(),
    );
  }
}
