import 'package:flutter/material.dart';

import '../../globals/global.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_ic_call_sharp,
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: Global.allContactDetails.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: FlutterLogo(),
              title: Text("${Global.allContactDetails[i]['name']}"),
              subtitle: Text("${Global.allContactDetails[i]['time']}"),
              trailing: IconButton(
                onPressed: () {},
                icon: (i % 2 == 0)
                    ? Icon(
                        Icons.call,
                        color: Color(0xff127c7e),
                      )
                    : Icon(
                        Icons.video_call,
                        color: Color(0xff127c7e),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
