import 'package:flutter/material.dart';
import 'package:music/provider/Music_Provider.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

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
          create: (context) => musicprovider(),
        ),
      ],
      child: MaterialApp(
        home: const Home(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color.fromARGB(255, 72, 53, 99),
          appBarTheme: const AppBarTheme(
            color: Colors.black38,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            iconTheme: IconThemeData(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
