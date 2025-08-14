import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  final int index;
  final String label;
  final String image;
  final String? cardNumber;

  const PaymentMethodItem({super.key, 
    required this.index,
    required this.label,
    required this.image,
    this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Image.asset(
          image,
          height: 40,
        ),
        title: Text(label,style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),),
        subtitle: cardNumber != null ? Text(cardNumber!) : null,
        trailing: Text("connected",style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 16),),
      ),
    );
  }
}
