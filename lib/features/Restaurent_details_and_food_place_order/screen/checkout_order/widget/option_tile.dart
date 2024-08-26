import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:gap/gap.dart';

class OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  OptionTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: HColors.primary,
          ),
          Gap(16),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color:HColors.primary,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}
