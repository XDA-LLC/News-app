import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news_app/core/data/service_locator.dart';
import 'package:news_app/features/home/presentation/home_screen.dart';

import 'features/home/presentation/bloc/news_bloc.dart';

void main() {
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News app',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        fontFamily: 'Outfit',
        useMaterial3: true,
      ),
      theme: ThemeData(
        segmentedButtonTheme:
            const SegmentedButtonThemeData(selectedIcon: Icon(Icons.ac_unit)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => NewsBloc()..add(const NewsEvent.getNews()),
        child: const HomeScreen(),
      ),
    );
  }
}
