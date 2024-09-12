import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> facts = [
    "The average person walks the equivalent of three times around the world in a lifetime.",
    "Honey never spoils. You can eat 3000-year-old honey!",
    "The world's oldest known recipe is for beer.",
    "The first computer programmer was a woman named Ada Lovelace.",
    "The first webcam was used to monitor a coffee pot.",
    "The first computer mouse was made of wood.",
    "The first hard disk drive weighed over a ton.",
    "The first computer virus was created in 1983.",
    "The first computer game was created in 1961.",
    "The first computer bug was a real bug - a moth!"
  ];
  
  //https://raw.githubusercontent.com/Yasitha-Bhanuka/funfact_flutter_api/main/facts.json

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: facts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          facts[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
