import 'package:flutter/material.dart';

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
    Key? key,
    this.leadingIcon,
    this.text,
    this.title,
    this.secondaryText,
    this.onTap,
    this.showBottomRow = false,
    this.deliveryText,
    this.priceText,
    this.bottomRowIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if(leadingIcon != null)...[
                  leadingIcon!
                ],
                SizedBox(width: 8),
                Expanded(
                  child: Row(
                    children: [
                      if(title != null)...[Text(
                        title!,
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),],
                      if(text != null)...[Text(
                        text!,
                        style: Theme.of(context).textTheme.bodySmall, // Customize main text style
                      ),],
                      if (secondaryText != null) ...[
                        SizedBox(width: 8), // Space between main text and secondary text
                        Text(
                          secondaryText!,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.grey), // Trailing arrow
              ],
            ),
            if (showBottomRow) ...[
              SizedBox(height: 8), // Space between rows
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
                  Text(
                    '|',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 12),
                  Icon(
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
