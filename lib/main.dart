import 'package:flutter/material.dart';
import 'package:flutter_palette_generator/theme/text_theme.dart';
import 'package:flutter_palette_generator/widgets/screens/palette_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Palette Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: textTheme,
        appBarTheme: const AppBarTheme().copyWith(
          centerTitle: true,
          titleTextStyle: textTheme.titleMedium,
        ),
      ),
      home: const PaletteScreen(),
    );
  }
}
