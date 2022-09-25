import 'package:flutter/material.dart';
import 'package:whatsapp_clone/globals/global.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            backgroundColor: Colors.grey,
            child: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 6),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(radius: 26),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff128c7e),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 1.5),
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          )
                        ],
                      ),
                      title: const Text("My Status"),
                      subtitle: const Text("Tap to add status update"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14),
                      child: Text(
                        "Recent updates",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 6,
              child: Container(
                child: ListView.builder(
                  itemBuilder: (context, i) {
                    return ListTile(
                      leading: FlutterLogo(),
                      title: Text("${Global.allContactDetails[i]['name']}"),
                      subtitle: Text("${Global.allContactDetails[i]['time']}"),
                    );
                  },
                  itemCount: Global.allContactDetails.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
