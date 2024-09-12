import 'package:flutter/material.dart';
import 'package:nike_sneakers/pages/IntroPage.dart';
import 'package:nike_sneakers/provider/ShoesProvider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ShoesProvider(),)
    ],child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        dividerTheme: const DividerThemeData(color: Colors.transparent),
      ),
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}