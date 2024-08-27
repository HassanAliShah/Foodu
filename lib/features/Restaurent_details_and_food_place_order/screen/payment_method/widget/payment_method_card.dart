import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PaymentMethodCard extends StatelessWidget {
  final String title;
  final String? balance;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodCard({
    Key? key,
    required this.title,
    this.balance,
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
            Icon(icon, color: Colors.green, size: 40.0),
            Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                     style: Theme.of(context).textTheme.bodyLarge
                  ),
                  if (balance != null)
                    Text(
                      balance!,
                      style: Theme.of(context).textTheme.labelSmall
                    ),
                ],
              ),
            ),
            if (isSelected)
              Icon(Icons.radio_button_checked, color: Colors.green,)
            else
              Icon(Icons.radio_button_unchecked, color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}