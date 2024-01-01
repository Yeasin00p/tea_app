import 'package:flutter/material.dart';
import 'package:tea_app/model/tea.dart';

class TeaTile extends StatelessWidget {
  final Tea tea;
  final VoidCallback onPressed;
  final Widget icon;
  const TeaTile(
      {super.key,
      required this.tea,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 10,
      ),
      child: ListTile(
        title: Text(tea.name),
        subtitle: Text(tea.price),
        leading: Image.asset(tea.imagePath),
        trailing: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
