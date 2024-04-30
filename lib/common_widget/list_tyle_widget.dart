import 'package:flutter/material.dart';
import 'package:tempflutter/screen/output_screen.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {required this.imageName, required this.index, super.key});

  final int index;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(imageName)),
      title: Text('$index Ronaldo Hatti'),
      subtitle: const Text('Kathmandu, Nepal'),
      trailing: Wrap(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return OutputScreen(firstName: '$index');
        }));
      },
    );
  }
}
