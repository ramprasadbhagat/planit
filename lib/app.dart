import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:planit/locator.dart';
import 'package:planit/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    setupLocator();
    final router = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PlanIt App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router.config(),
    );
  }
}

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
