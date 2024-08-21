import 'package:flutter/cupertino.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_chip.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

Widget buildChipList(RxList<String> items) {
  return Wrap(
    runSpacing: 4.0,
    spacing: 4.0,
    children: items.map((item) => CustomChip(label: item)).toList(),
  );
}