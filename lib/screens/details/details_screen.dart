import 'package:dressr/constants.dart';
import 'package:dressr/screens/details/components/color_dot.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/Product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: kDefaultPaddin * 1.5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(kDefaultPaddin,
                  kDefaultPaddin * 2, kDefaultPaddin, kDefaultPaddin),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(width: kDefaultPaddin),
                      Text(
                        "\$" + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    ),
                  ),
                  Text(
                    "Colors",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(height: kDefaultPaddin / 2),
                  // Row(
                  //   children: const [
                  //     ColorDot(
                  //       color: Color(0xFFBEE8EA),
                  //       isActive: false,
                  //     ),
                  //     ColorDot(
                  //       color: Color(0xFF141B4A),
                  //       isActive: true,
                  //     ),
                  //     ColorDot(
                  //       color: Color(0xFFF4E5C3),
                  //       isActive: false,
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: kDefaultPaddin * 2),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: product.color,
                            shape: const StadiumBorder()),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/cart.svg')),
          const SizedBox(width: kDefaultPaddin / 2),
        ]);
  }
}
