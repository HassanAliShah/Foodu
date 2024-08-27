import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:gap/gap.dart';

class DiscountCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const DiscountCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: CircleAvatar(
                backgroundColor: HColors.primary,
                child: Icon(
                 icon,
                  color:Colors.white,
                ),
              ),
            ),
            Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                      style: Theme.of(context).textTheme.bodyLarge
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    description,
                      style: Theme.of(context).textTheme.labelSmall
                  ),
                ],
              ),
            ),
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              color: isSelected ? HColors.primary : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}