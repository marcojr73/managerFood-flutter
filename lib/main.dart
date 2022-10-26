// style: TextStyle(color: Theme.of(context).primaryColor)
import 'package:flutter/material.dart';
import 'package:foodmanager/screens/DishDetail.dart';
import 'package:foodmanager/screens/categories.dart';
import 'package:foodmanager/screens/dishesCategory.dart';
import 'package:foodmanager/screens/settingsScreen.dart';
import 'package:foodmanager/screens/tabsScreen.dart';
import 'package:foodmanager/utils/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
        fontFamily: "Raleway",
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: const TextStyle(
            fontSize: 20,
            fontFamily: "RobotoCondensed"
          )
        )
      ),
      routes: {
        AppRouters.HOME: (ctx) => const TabsScreen(),
        AppRouters.DISHES: (ctx) => const DishesCategoryScreen(),
        AppRouters.DISH_DETAIL: (ctx) => const DishDetailScreen(),
        AppRouters.SETTINGS: (ctx) => const SettingsScreen(),
      },
    );
  }
}

