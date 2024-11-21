import 'package:boi_chokro/components/price_tag.dart';
import 'package:boi_chokro/demo_data.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../small_dot.dart';
import 'big_card_image_slide.dart';

class BookInfoBigCard extends StatelessWidget {
  final Book book;
  final VoidCallback press;

  const BookInfoBigCard({
    super.key,
    required this.book,
    required this.press,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // pass list of images here
          BigCardImageSlide(images: book.images),
          const SizedBox(height: defaultPadding / 2),
          Text(book.name, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: defaultPadding / 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PriceTag(
                isFree: book.isFree,
                price: book.price,
                isExchange: book.isExchange,
                exchangePolicy: book.exchangePolicy,
              ),
              const SizedBox(width: defaultPadding / 2),
              const SmallDot(),
              const SizedBox(width: defaultPadding / 2),
              Text(
                "${book.location} KM",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: titleColor.withOpacity(0.74)),
              ),
              const SizedBox(width: defaultPadding / 2),
              const SmallDot(),
              if (book.isExchange) ...[
                const SizedBox(width: defaultPadding / 2),
                Flexible(
                  child: Text(
                    book.exchangePolicy,
                    maxLines: 1,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ]
            ],
          )
        ],
      ),
    );
  }
}
