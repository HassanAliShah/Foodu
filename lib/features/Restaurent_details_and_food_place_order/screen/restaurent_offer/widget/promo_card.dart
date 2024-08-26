import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class PromoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onTap;

  const PromoCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 14),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 24,
                child: Icon(
                  icon,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: HHelperFunctions.screenWidth() / 2.2,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: HColors.textblack)
                    ),
                  ),
                  SizedBox(height: 4.0),
                  SizedBox(
                    width: HHelperFunctions.screenWidth() / 2.2,
                    child: Text(
                      description,
                      maxLines: 2,
                      style:Theme.of(context).textTheme.labelSmall
                    ),
                  ),
                ],
              ),
            ],
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: buttonText == 'Claim' ? HColors.primary : HColors.backgroundLight,
          backgroundColor: buttonText == 'Claim' ? HColors.backgroundLight : HColors.primary,
          side:  const BorderSide(color:HColors.primary),
          padding: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          textStyle:  const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
             ),
            onPressed: onTap,
            child: Text(
              buttonText,
            ),
          ),
        ],
      ),
    );
  }
}
