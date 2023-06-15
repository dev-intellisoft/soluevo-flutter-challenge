
import 'package:challenge/screens/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    MyController controller = Get.find<MyController>();
    return  Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        if(controller.text.isEmpty) {
          return Text('Nothing to show');
        }
        return Column(
          children: controller.renderWords(),
        );
      }),
    );
  }
}
