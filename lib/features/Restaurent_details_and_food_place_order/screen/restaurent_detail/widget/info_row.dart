import 'package:flutter/material.dart';
import 'package:foodu/utils/exports.dart';

class InfoRow extends StatelessWidget {
  final Icon? leadingIcon;
  final String? title;
  final String? text;
  final String? secondaryText; // Optional secondary text
  final VoidCallback? onTap;
  final bool showBottomRow; // Whether to show the bottom row or not
  final String? deliveryText; // Text in the bottom row
  final String? priceText; // Price text in the bottom row
  final Widget? bottomRowIcon; // Icon in the bottom row

  const InfoRow({
    super.key,
    this.leadingIcon,
    this.text,
    this.title,
    this.secondaryText,
    this.onTap,
    this.showBottomRow = false,
    this.deliveryText,
    this.priceText,
    this.bottomRowIcon,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// -- Leading Icon and title
            Row(
              children: [
                /// -- Leading Icon
                if(leadingIcon != null)...[leadingIcon!],
                const SizedBox(width: TSizes.sm),

                /// -- Title , secondary Text
                Expanded(
                  child: Row(
                    children: [
                      // title
                      if(title != null)...[Text(
                        title!,
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: dark ? Colors.white : Colors.black
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),],

                      // main text
                      if(text != null)...[Text(
                        text!,
                        style: Theme.of(context).textTheme.bodySmall, // Customize main text style
                      ),],

                      // Secondary Text
                      if (secondaryText != null) ...[
                        const SizedBox(width: 8), // Space between main text and secondary text
                        Text(
                          secondaryText!,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, color: Colors.grey), // Trailing arrow
              ],
            ),

            /// -- Deliver now text and fee
            if (showBottomRow) ...[
              const SizedBox(height: 8), // Space between rows
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Delivery Now',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    '|',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.delivery_dining,
                    color: Colors.green,
                    size: 16.0,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    priceText ?? '',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
