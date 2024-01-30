import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter Card Widget")),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => _cardItem(),
        ));
  }

  _cardItem() {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ListTile(
            leading: Icon(Icons.music_note, size: 30),
            title: Text("Unknown Artist"),
            subtitle: Text("Prepared by unknown person"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text("Delete")),
              TextButton(onPressed: () {}, child: const Text("Listen")),
            ],
          )
        ],
      ),
    );
  }
}
