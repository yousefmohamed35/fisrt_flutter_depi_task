import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  static const List<MaterialColor> color = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.cyan,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.amber,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.blueGrey,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return StackedWidget(
            color: color[index],
          );
        });
  }
}

class StackedWidget extends StatelessWidget {
  const StackedWidget({
    super.key,
    required this.color,
  });
  final MaterialColor color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 16),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: const Text(
            'Center',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        const Positioned(
          top: 15,
          left: 15,
          child: Text(
            'Top Left',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        const Positioned(
          bottom: 30,
          right: 15,
          child: Text(
            'Bottom Right',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
