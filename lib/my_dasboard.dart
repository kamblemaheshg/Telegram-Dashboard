import 'package:flutter/material.dart';
import 'package:telegram_ui/constant.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            "edit",
            style: TextStyle(fontSize: 21, color: Colors.lightBlue),
          )),
        ),
        title: Center(
            child: Text(
          "Chats",
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.edit,
              size: 21,
              color: Colors.lightBlue,
            ),
          )
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipOval(
                    child: Image.network(
                      data[index]["profileImage"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  data[index]["name"],
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  data[index]["lastChat"],
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  data[index]["lastChatTime"],
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
