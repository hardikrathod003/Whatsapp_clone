import 'package:flutter/material.dart';

import '../../globals/global.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: Global.allContactDetails.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: FlutterLogo(),
              title: Text("${Global.allContactDetails[i]['name']}"),
              subtitle: Text("${Global.allContactDetails[i]['description']}"),
              trailing: Text(
                "${Global.allContactDetails[i]['time']}",
                style: const TextStyle(color: Colors.grey),
              ),
            );
          },
        ),
      ),
    );
  }
}
