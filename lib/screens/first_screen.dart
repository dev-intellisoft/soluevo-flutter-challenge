
import 'package:challenge/screens/controller.dart';
import 'package:challenge/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyController controller = Get.find<MyController>();
    return  Scaffold(
      appBar: AppBar(title: const Text('First Screen'),),
      body: Column(
        children: [
          TextFormField(onChanged: (value) => controller.text.value = value,),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: () => Get.to(() => const SecondScreen()), child: const Text('OK')),
        ],
      ),
    );
  }
}
