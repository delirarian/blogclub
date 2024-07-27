import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchBarTextField extends StatelessWidget {
  const SearchBarTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        height: 38,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorPalette.lightGrey,
        ),
        child: TextField(
          cursorColor: ColorPalette.secondaryLightGrey,
          decoration: InputDecoration(
            hintText: Constants.searchHintTextTitle,
            hintStyle: const TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.w500,
            ),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 24,
              color: ColorPalette.secondaryLightGrey,
            ),
          ),
          style: const TextStyle(
            color: ColorPalette.black,
            fontSize: 16.5,
          ),
        ),
      ),
    );
  }
}
