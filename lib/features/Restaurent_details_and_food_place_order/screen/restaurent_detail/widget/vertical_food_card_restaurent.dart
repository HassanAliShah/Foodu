import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class VerticalFoodCardRestaurent extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String? badgeText;

  const VerticalFoodCardRestaurent({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.badgeText,
  });

  @override
  _VerticalFoodCardRestaurentState createState() =>
      _VerticalFoodCardRestaurentState();
}

class _VerticalFoodCardRestaurentState extends State<VerticalFoodCardRestaurent> {
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
        width: THelperFunctions.screenWidth() / 2.7,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: isTapped ? TColors.primary : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)
                  ),
                  child: Image.asset(
                    widget.imageUrl,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                if (widget.badgeText != null)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        widget.badgeText!,
                        style:Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.backgroundLight,fontSize: 5),
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: 50,
                child: Text(
                  widget.title,
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
              child: Text(
               "\$ ${widget.price}",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
