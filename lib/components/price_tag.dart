import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final bool isFree;
  final bool isExchange;
  final String exchangePolicy;
  final double price;
  const PriceTag({
    super.key,
    required this.isFree,
    this.isExchange = false,
    this.exchangePolicy = "",
    this.price = 0,
  });

  String get priceText {
    if (isExchange) {
      return "E-\$$price";
    } else if (isFree) {
      return "Free";
    } else if (isFree && isExchange) {
      return "Free - E";
    } else {
      return "\$$price";
    }
  }

  Color get primaryColor {
    if (isExchange) {
      return Colors.orange;
    } else if (isFree) {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Text(
        priceText,
        style: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
