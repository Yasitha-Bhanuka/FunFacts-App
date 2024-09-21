import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:funfacts/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<dynamic> facts = [];

  bool isLoading = true;

  void getData() async {
    try {
      Response response = await Dio().get(
          "https://raw.githubusercontent.com/Yasitha-Bhanuka/funfact_flutter_api/refs/heads/main/facts.json");

      facts = jsonDecode(response.data);
      isLoading = false;

      setState(() {});
    } catch (e) {
      isLoading = false;
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState

    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fun Facts'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SettingsScreen();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: facts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Container(
                            child: Center(
                                child: Text(
                          facts[index],
                          style: TextStyle(fontSize: 35),
                          textAlign: TextAlign.center,
                        ))),
                      );
                    }),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Swipe left for more"),
            ),
          )
        ],
      ),
    );
  }
}
