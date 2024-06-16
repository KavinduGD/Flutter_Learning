import 'package:flutter/material.dart';
import 'package:dart_basics_01/gradient_container.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: Scaffold(
//       backgroundColor: null,
//       body: Center(
//         child: Text('sdsdsdsddr'),
//       ),
//     ),
//   ));
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 14, 44, 68),
        body: GradientContainer([Color.fromARGB(255, 12, 6, 48), Colors.blue]),
      ),
    );
  }
}
