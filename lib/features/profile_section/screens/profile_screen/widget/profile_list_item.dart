import 'package:flutter/material.dart';

class ProfileListItem extends StatelessWidget {
  final IconData? icon;
  final String title;
  final VoidCallback onTap;
  final String? trailingText;

  const ProfileListItem({
    Key? key,
     this.icon,
    required this.title,
    required this.onTap,
    this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon !=null ? Icon(icon, color: Colors.black) : null,
      title: Text(title,style: Theme.of(context).textTheme.bodyMedium,),
      trailing: trailingText != null
          ? Text(trailingText!, style: Theme.of(context).textTheme.bodySmall)
          : Icon(Icons.chevron_right, color: Colors.black),
      onTap: onTap,
    );
  }
}
