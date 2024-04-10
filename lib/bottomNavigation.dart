import 'package:flutter/material.dart';
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'controllers/NavigationController.dart';
 
 class CustomNavigationBar extends StatelessWidget {
  final NavigationController controller;

  CustomNavigationBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) => controller.selectedIndex.value = index,
        destinations:  const [
          const NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
          const NavigationDestination(icon: Icon(Iconsax.chart_success), label: 'tracker'),
          const NavigationDestination(icon: Icon(Iconsax.archive_1), label: "todo"),
          const NavigationDestination(icon: Icon(Iconsax.user_octagon), label: "my Baby"),
        ],
      ),
    );
  }
}