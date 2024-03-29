import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cards Flutter"),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return _cardWidget(title: "Unknown artist", subtitle: "Prepared by unknown");
            }));
  }

  _cardWidget({required String title, required String subtitle}) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(
              Icons.music_note,
              size: 30,
            ),
            title: Text(title),
            subtitle: Text(subtitle),
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
