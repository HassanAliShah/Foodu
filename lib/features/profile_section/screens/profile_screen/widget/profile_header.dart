import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String imageUrl;
  final VoidCallback onEdit;

  const ProfileHeader({
    Key? key,
    required this.name,
    required this.phoneNumber,
    required this.imageUrl,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageUrl),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                phoneNumber,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: HColors.textGrey),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.edit, color: Colors.green),
            onPressed: onEdit,
          ),
        ],
      ),
    );
  }
}
