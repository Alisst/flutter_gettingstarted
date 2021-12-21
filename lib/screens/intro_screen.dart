import 'package:flutter/material.dart';
import 'package:flutter_gettingstarted/shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Globo Fitness")),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('/beach.jpg'),
            fit: BoxFit.cover,
          )),
          child: Center(
              child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              "Commit to be fit, \n eat less.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                shadows: [Shadow(offset: Offset(1.0, 1.0), blurRadius: 2.0)],
              ),
            ),
          ))),
    );
  }
}
