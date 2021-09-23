// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:special_counter/home_page.dart';
import 'package:special_counter/counter.dart';
import 'package:special_counter/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => themeChanger(ThemeData.light()),
        child: MaterialAppWithTheme());
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<themeChanger>(context);
    return MaterialApp(
      theme: theme.gatTheme(),
      home: ChangeNotifierProvider<Counter>(
          create: (context) => Counter(), child: HomePage()),
    );
  }
}
