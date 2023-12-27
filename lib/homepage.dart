import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController controller1 = TextEditingController();
  late TextEditingController controller2 = TextEditingController();
  int summ = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: controller1,
            decoration: InputDecoration(),
          ),
          Text(
            "+",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: controller2,
            decoration: InputDecoration(),
          ),
          OutlinedButton(
            onPressed: () {
              int num1 = int.tryParse(controller1.text) ?? 0;
              int num2 = int.tryParse(controller2.text) ?? 0;

              setState(() {
                summ = num1 + num2;
              });
            },
            child: Text("Set state"),
          ),
          Text(
            "=",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Text(
            "$summ",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
