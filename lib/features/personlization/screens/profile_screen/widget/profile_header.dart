import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String imageUrl;
  final VoidCallback onEdit;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.phoneNumber,
    required this.imageUrl,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.md),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageUrl),
          ),
          const SizedBox(width: TSizes.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: TSizes.md,),
              Text(
                phoneNumber,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.textGrey),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.green),
            onPressed: onEdit,
          ),
        ],
      ),
    );
  }
}
