import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:gap/gap.dart';

class AddressCard extends StatelessWidget {
  final String title;
  final String address;
  final bool isDefault;
  final VoidCallback onTap;

  const AddressCard({
    super.key,
    required this.title,
    required this.address,
    this.isDefault = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
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
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: const CircleAvatar(
          backgroundColor: TColors.primary,
          child: Icon(
            Icons.location_on,
            color: Colors.white,
          ),
        ),
      ),
        const Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                          style: Theme.of(context).textTheme.bodyLarge
                      ),
                      const SizedBox(width: 8.0),
                      if (isDefault)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Text(
                            'Default',
                              style: Theme.of(context).textTheme.labelLarge
                          ),
                        ),
                    ],
                  ),
                  Text(
                    address,
                      style: Theme.of(context).textTheme.labelSmall
                  ),
                ],
              ),
            ),
            const Icon(Icons.edit,color: TColors.primary,)
          ],
        ),
      ),
    );
  }
}
