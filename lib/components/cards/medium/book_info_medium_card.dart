import 'package:boi_chokro/demo_data.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../price_tag.dart';
import '../../small_dot.dart';

class BookInfoMediumCard extends StatelessWidget {
  const BookInfoMediumCard({
    super.key,
    required this.book,
    required this.press,
  });

  final Book book;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(book.images[0], fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              book.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
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
      ),
    );
  }
}
