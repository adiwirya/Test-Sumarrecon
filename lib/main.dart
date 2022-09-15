import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test234/screens/screens.dart';
import 'package:test234/providers/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BlockNomors(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomeScreen(),
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          ListDataScreen.routeName: (context) => ListDataScreen(),
        },
      ),
    );
  }
}
