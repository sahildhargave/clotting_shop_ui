import 'package:craze/components/barchart/barchart_data.dart';
import "package:flutter/material.dart";

import 'package:intl/intl.dart';

class Barchart extends StatelessWidget {
  final Color color;

  final DisplayType display;
  final Icon icon;
  final String title;
  final String subTitle;

  final List<BarchartData> data;

  Barchart({
    Key? key,
    required this.color,
    required this.display,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.data,
  }) : super(key: key);
  final formatter = NumberFormat('#,##,000');

  Widget renderValue() {
    switch (display) {
      case DisplayType.max:
        return Text(
          formatter.format(data
              .reduce((curr, next) => curr.value > next.value ? curr : next)
              .value),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Colors.grey,
          ),
        );
      case DisplayType.min:
        return Text(
          formatter.format(data
              .reduce((curr, next) => curr.value < next.value ? curr : next)
              .value),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Colors.grey,
          ),
        );
      case DisplayType.total:
        return Text(
          formatter
              .format(data.fold<double>(0, (sum, item) => sum + item.value)),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Colors.grey,
          ),
        );
      case DisplayType.average:
        return Text(
          (data.fold<int>(0, (sum, item) => sum + item.value.toInt()) /
                  data.length)
              .toInt()
              .toString(),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Colors.grey,
          ),
        );
      default:
        return Text(
          "",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Colors.grey,
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
