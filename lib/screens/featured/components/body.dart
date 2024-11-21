import 'package:boi_chokro/components/cards/big/book_info_big_card.dart';
import 'package:flutter/material.dart';
import '../../../components/scalton/big_card_scalton.dart';
import '../../../constants.dart';

import '../../../demo_data.dart';

/// Just for show the scalton we use [StatefulWidget]
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
  bool isLoading = true;
  int demoDataLength = 4;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView.builder(
          // while we dont have our data bydefault we show 3 scalton
          itemCount: isLoading ? 3 : demoDataLength,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            child: isLoading
                ? const BigCardScalton()
                : BookInfoBigCard(
                  book: dummyBookList.first,
                    press: () {},
                  ),
          ),
        ),
      ),
    );
  }
}
