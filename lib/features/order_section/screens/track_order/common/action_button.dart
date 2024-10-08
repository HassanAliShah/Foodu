
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key, required this.colorGradient, required this.onTap, required this.iconData,
  });
  final Gradient colorGradient;
  final VoidCallback onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          gradient:colorGradient,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Container(
          width: 24,
          height: 24,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child:Icon(iconData,color: Colors.white,),
        ),
      ),
    );
  }
}