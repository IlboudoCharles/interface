import 'package:flutter/material.dart';
import 'package:realisation_interface/constants,/colors.dart';


class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  const BottomBarItem({
    super.key,
    required this.icon,
    this.label = '',
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color activeColor = kPrimaryGreen;
    final Color inactiveColor = const Color(0xFF888888);

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: isActive ? 15 : 0, vertical: 5),
        decoration: BoxDecoration(
          color: isActive ? activeColor.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isActive ? activeColor : inactiveColor,
              size: 24,
            ),
            if (label.isNotEmpty)
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  color: isActive ? activeColor : inactiveColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}