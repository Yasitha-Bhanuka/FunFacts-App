import 'package:flutter/material.dart';
import 'package:funfacts/providers/themeProvider.dart';
import 'package:funfacts/widgets/theme_switcher.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Column(
          children: [
            ThemeSwitcher(),
            ElevatedButton(
                onPressed: () {
// change the global state variable value
                  themeProvider.updateStringData(
                      newData: "Hello world from updated global state");
                },
                child: Text("Update global state value")),
            Text(themeProvider.dataToUpdate),
          ],
        ));
  }
}
