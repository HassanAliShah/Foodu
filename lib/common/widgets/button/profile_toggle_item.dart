import 'package:flutter/material.dart';

class ProfileToggleItem extends StatelessWidget {
  final IconData? icon;
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const ProfileToggleItem({
    Key? key,
     this.icon,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon != null ? Icon(icon, color: Colors.black) : null,
      title: Text(title,style: Theme.of(context).textTheme.bodyMedium,),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
