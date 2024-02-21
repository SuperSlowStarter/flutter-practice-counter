import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClicked() {
    setState(() {
      counter += 1;
    });
  }

  void decrease() {
    setState(() {
      counter -= 1;
    });
  }

  void initialize() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              Text(
                '$counter',
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onClicked,
                    icon: const Icon(Icons.add_box_rounded),
                    iconSize: 60,
                  ),
                  IconButton(
                    onPressed: decrease,
                    icon: const Icon(Icons.indeterminate_check_box),
                    iconSize: 60,
                  ),
                  IconButton(
                    onPressed: initialize,
                    icon: const Icon(Icons.check_box),
                    iconSize: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
