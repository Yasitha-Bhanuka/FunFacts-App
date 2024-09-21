import 'package:flutter/material.dart';
import 'package:funfacts/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> facts = [
    'The first oranges weren’t orange.',
    'The color orange was named after the fruit.',
    'The first recorded use of orange as a color name in English was in 1512.',
    'The word orange comes from the Sanskrit word nāraṅga.',
    'The first recorded use of orange as a color name in English was in 1512.',
    'The word orange comes from the Sanskrit word nāraṅga.',
    'The first recorded use of orange as a color name in English was in 1512.',
    'The word orange comes from the Sanskrit word nāraṅga.',
    'The first recorded use of orange as a color name in English was in 1512.',
    'The word orange comes from the Sanskrit word nāraṅga.',
  ];

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
            child: PageView.builder(
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
