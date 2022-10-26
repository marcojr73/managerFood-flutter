import 'package:flutter/material.dart';
import 'package:foodmanager/utils/routers.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget createIcon(IconData icon, String label, void Function() onTap){
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: "RobotoCondensed",
          fontWeight: FontWeight.bold,
          fontSize: 24
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          color: Theme.of(context).colorScheme.secondary,
          alignment: Alignment.center,
          child: Text(
            "Lets cook!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Theme.of(context).colorScheme.primary
            ),
          ),
        ),
        const SizedBox(height: 20),
        createIcon(Icons.restaurant, "Meals", () {
          Navigator.of(context).pushReplacementNamed(AppRouters.HOME);
        }),
        createIcon(Icons.settings, "Settings", () {
          Navigator.of(context).pushReplacementNamed(AppRouters.SETTINGS);
        })
      ]),
    );
  }
}