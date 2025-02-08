import 'package:flutter/material.dart';
import 'package:hng_track_zero/hng_start_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 30, 89, 190)),
      useMaterial3: true,
    ),
    home: HngStarter(),
  ));
}
