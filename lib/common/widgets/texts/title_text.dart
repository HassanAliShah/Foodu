

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: Theme.of(context).textTheme.bodyLarge,);
  }
}