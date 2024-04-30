import 'package:flutter/material.dart';
import 'package:tempflutter/screen/custom_widget_field.dart';
import 'package:tempflutter/screen/flexible_expanded_screen.dart';
import 'package:tempflutter/screen/flutter_layout_screen.dart';
import 'package:tempflutter/screen/list_tile.dart';
import 'package:tempflutter/screen/output_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlexibleExpandedScreen(),
    );
  }
}
