import 'package:flutter/material.dart';

import '../constants.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 18),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF8F8FB)),
          child: const Icon(
            Icons.search,
            color: buttonColor,
          ),
        ),
      ),
    );
  }
}
