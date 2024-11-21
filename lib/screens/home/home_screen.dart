import 'package:boi_chokro/components/cards/big/big_card_image_slide.dart';
import 'package:boi_chokro/components/cards/big/book_info_big_card.dart';
import 'package:boi_chokro/constants.dart';
import 'package:boi_chokro/demo_data.dart';
import 'package:boi_chokro/pages/home/favourite_screen.dart';
import 'package:boi_chokro/screens/details/details_screen.dart';
import 'package:boi_chokro/screens/featured/featurred_screen.dart';
import 'package:boi_chokro/screens/home/components/medium_card_list.dart';
import 'package:boi_chokro/screens/home/components/promotion_banner.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            const Icon(Icons.location_on, color: primaryColor),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Current Location".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: primaryColor),
                ),
                const Text(
                  "Ashulia, Dhaka",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: BigCardImageSlide(images: demoBigImages),
              ),
              const SizedBox(height: defaultPadding * 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: SectionTitle(
                  title: "Nearby Books",
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FeaturedScreen(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding),
              const MediumCardList(),
              const SizedBox(height: 20),
              // Banner
              const PromotionBanner(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: SectionTitle(
                  title: "Best Pick",
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FeaturedScreen(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const MediumCardList(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: SectionTitle(title: "All Restaurants", press: () {}),
              ),
              const SizedBox(height: 16),

              // Demo list of Big Cards
              ...List.generate(
                // For demo we use 4 items
                3,
                (index) => Padding(
                  padding: const EdgeInsets.fromLTRB(
                      defaultPadding, 0, defaultPadding, defaultPadding),
                  child: BookInfoBigCard(
                    book: dummyBookList[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsScreen(),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
