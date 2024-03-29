import "package:flutter/material.dart";

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/");
            break;
          case 1:
            Navigator.pushNamed(context, "/bmi");
            break;
          case 2:
            Navigator.pushNamed(context, "/weather");
            break;
          case 3:
            Navigator.pushNamed(context, "/training");
            break;
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.monitor_weight), label: "BMI"),
        BottomNavigationBarItem(
            icon: Icon(Icons.cloud_circle_rounded), label: "Weather"),
        BottomNavigationBarItem(
            icon: Icon(Icons.model_training), label: "Training"),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
