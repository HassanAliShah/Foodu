import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class HorizontalFoodCardRestaurent extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String? badgeText;

  const HorizontalFoodCardRestaurent({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.badgeText,
  }) : super(key: key);

  @override
  _HorizontalFoodCardRestaurentState createState() =>
      _HorizontalFoodCardRestaurentState();
}

class _HorizontalFoodCardRestaurentState
    extends State<HorizontalFoodCardRestaurent> {
  bool isTapped = false;

  void _toggleBorderColor() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleBorderColor,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        padding: const EdgeInsets.all(8.0),
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
          border: Border.all(
            color: isTapped ? Colors.green : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                widget.imageUrl,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.badgeText != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        widget.badgeText!,
                        style:Theme.of(context).textTheme.labelLarge?.copyWith(color: HColors.backgroundLight,fontSize: 5),
                      ),
                    ),
                  SizedBox(height: 8.0),
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.0),
    Text(
    "\$ ${widget.price}",
    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: HColors.primary)
    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
