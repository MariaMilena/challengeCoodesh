import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'mobx_store/user_store.dart';
import 'pages/login/login.dart';

void main() {
  GetIt.I.registerSingleton<UserStore>(UserStore());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // brightness: Brightness.dark
      ),
      home: const Login(),
    );
  }
}
