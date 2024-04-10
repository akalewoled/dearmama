
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 1.obs;

  final Screens =[Container(color: Colors.green,),Container(color: Colors.purple,),Container(color: Colors.orange,),Container(color: Color.fromARGB(255, 42, 180, 187),)];
}