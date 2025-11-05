import 'package:flutter/material.dart';

class DemoModel {
  final String title;
  final String description;
  final IconData icon;

  DemoModel({
    required this.title,
    required this.description,
    required this.icon,
  });
}

List<DemoModel> getDemoItems() {
  List<DemoModel> items = [];
  items.add(
    DemoModel(
      title: "Home",
      description: "Go to home screen",
      icon: Icons.home,
    ),
  );
  items.add(
    DemoModel(
      title: "Profile",
      description: "View your profile",
      icon: Icons.person,
    ),
  );
  items.add(
    DemoModel(
      title: "Settings",
      description: "Adjust application settings",
      icon: Icons.settings,
    ),
  );
  items.add(
    DemoModel(
      title: "Notifications",
      description: "View recent notifications",
      icon: Icons.notifications,
    ),
  );
  return items;
}
