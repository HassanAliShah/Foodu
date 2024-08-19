import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class FoodCardHorizontalCart extends StatelessWidget {
  final List<String> imageUrl;
  final String title;
  final String description;
  final double price;

  const FoodCardHorizontalCart({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 60,
            child: Stack(
              children: List.generate(imageUrl.length, (index) {
                return Positioned(
                  left: index * 10.0, // 10 pixels right offset for each image
                  child: Container(
                    width: 60,height: 60,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          imageUrl[index],
                        ),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
                  ),
                const SizedBox(height: 4.0),
                Text(
                  description,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 8),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: HColors.primary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
