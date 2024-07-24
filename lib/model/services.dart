import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../components/style/size_config.dart';
import '../data/list.dart';


class ServicesTab extends StatelessWidget {
  const ServicesTab({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Specialists",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: servicesList
              .map(
                (e) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 204, 231, 252),
                        offset: Offset(1, 1),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 191, 217, 236),
                        offset: Offset(-1, -1),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]
                  ),
                  child: CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: Container(
                      width: SizeConfig.blockSizeHorizontal! * 17,
                      height: SizeConfig.blockSizeHorizontal! * 17,
                      decoration: BoxDecoration(
                        color: e.color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: SvgPicture.asset(e.image),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}