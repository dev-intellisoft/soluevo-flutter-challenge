import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  RxString text = ''.obs;

  List<Widget> renderWords() {
    List<Widget> widgets = [];
    List<String> words = text.value.split(' ').toSet().toList();
    for(var word in words) {
      int count = 0;
      List<String> _words = text.value.split(' ');
      for (var w in _words) {
        if (w == word)
          count ++;
      }
      widgets.add(Text('${word} ${count}'));
    }

    return widgets;
  }
}
