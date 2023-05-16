import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class SerchIcon extends StatelessWidget {
  const SerchIcon({super.key, required this.icon, });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16)),
        child: IconButton(
        onPressed: () {},
        icon:Icon(icon,
        
        size: 28,
         ) ,
         
        ));
  }
}
