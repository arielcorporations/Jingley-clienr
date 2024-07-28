// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

void main() {
  runApp(MyApp());
  FlutterBackgroundService.initialize(onStart);
}

void onStart() {
  // Listen for incoming calls here
  // Play the jingle ("Greeting.mp3") for the caller
  // Handle call answering
}

void onCallAnswered() {
  stopJingle();
  FlutterRingtonePlayer.stop();
}

void stopJingle() async {
  AudioPlayer audioPlayer = AudioPlayer();
  await audioPlayer.stop();
}
