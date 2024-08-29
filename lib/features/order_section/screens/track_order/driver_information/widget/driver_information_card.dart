import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DriverInformationCard extends StatelessWidget {
  final String driverName;
  final String driverPhoneNumber;
  final String driverImageUrl;
  final double rating;
  final int orders;
  final int years;
  final String memberSince;
  final String vehicleModel;
  final String plateNumber;

  const DriverInformationCard({
    Key? key,
    required this.driverName,
    required this.driverPhoneNumber,
    required this.driverImageUrl,
    required this.rating,
    required this.orders,
    required this.years,
    required this.memberSince,
    required this.vehicleModel,
    required this.plateNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: 16),
        // Profile picture and name
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(driverImageUrl),
        ),
        SizedBox(height: 16),
        Text(
          driverName,
          style:Theme.of(context).textTheme.bodyLarge
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              driverPhoneNumber,
                style:Theme.of(context).textTheme.bodyLarge?.copyWith(color: HColors.textGrey)
            ),
            SizedBox(width: 8),
            Icon(Icons.verified, color: HColors.primary, size: 16),
          ],
        ),
        SizedBox(height: 24),
        // Stats
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatColumn(Icons.star, rating.toString(), 'Ratings'),
                  _buildStatColumn(Icons.shopping_bag, orders.toString(), 'Orders'),
                  _buildStatColumn(Icons.access_time, years.toString(), 'Years'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 24),
        // Additional Information
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow('Member Since', memberSince),
                  SizedBox(height: 8),
                  _buildInfoRow('Motorcycle Model', vehicleModel),
                  SizedBox(height: 8),
                  _buildInfoRow('Plate Number', plateNumber),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatColumn(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, color: HColors.primary, size: 32),
        SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(Get.context!).textTheme.bodyMedium
        ),
        SizedBox(height: 4),
        Text(
          label,
          style:Theme.of(Get.context!).textTheme.titleSmall
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
            style:Theme.of(Get.context!).textTheme.titleSmall
        ),
        Text(
          value,
            style:Theme.of(Get.context!).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)
        ),
      ],
    );
  }
}
