import 'package:flutter/material.dart';
import 'package:foodmanager/components/mainDrawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("settings"),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("I am the settings"),
      ),
    );
  }
}