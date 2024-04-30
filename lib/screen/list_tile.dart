import 'package:flutter/material.dart';
import 'package:tempflutter/common_widget/list_tyle_widget.dart';

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({super.key});

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i <= 1000; i++) ...{
              if (i % 2 == 0) ...{
                ListTileWidget(
                  imageName: 'assets/images/image_1.jpg',
                  index: i,
                ),
              } else ...{
                ListTileWidget(
                  index: i,
                  imageName: 'assets/images/image_2.jpg',
                )
              }
            },
          ],
        ),
      ),
    );
  }
}
