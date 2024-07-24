import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_health_v1/components/style/size_config.dart';
import 'package:med_health_v1/components/style/style.dart';

class SearchMedical extends StatelessWidget {
  const SearchMedical({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const  [
          BoxShadow(
            color: Color.fromARGB(255, 218, 232, 243),
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Color(0xFFDAECFA),
            offset: Offset(-1, -1),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ]
      ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            prefixIcon: CupertinoButton(
              onPressed: () {},
              child: SvgPicture.asset(Appstyle.searchIcon),
            ),
            suffixIcon: CupertinoButton(
              onPressed: () {},
              child: SvgPicture.asset(Appstyle.filtterIcon),
            ),
            hintText: "Search medical..",
            fillColor: Appstyle.inputFillColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      ),
    );
  }
}
