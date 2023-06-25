import 'package:flutter/material.dart';
import 'package:movies_clean_code/movies/presentation/screens/movies_screen.dart';

import 'core/services/services_locator.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      home: MainMoviesScreen(),
    );
  }
}
