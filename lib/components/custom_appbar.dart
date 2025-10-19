import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../core/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.isBlackk});
  final bool isBlackk;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    bool isBlack = isBlackk;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: AppBar(
        actions: [
          Gap(20),
          SvgPicture.asset(
            "assets/svgs/shopping bag.svg",
            colorFilter: ColorFilter.mode(
              isBlack
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : AppColors.primary,
              BlendMode.srcIn,
            ),
          ),
        ],
        leadingWidth: 25,
        centerTitle: true,
        scrolledUnderElevation: 0.0,
        backgroundColor: isBlack
            ? AppColors.primary
            : const Color.fromARGB(255, 255, 250, 244),
        leading: SvgPicture.asset(
          "assets/svgs/Menu.svg",
          colorFilter: ColorFilter.mode(
            isBlack ? Colors.white : AppColors.primary,
            BlendMode.srcIn,
          ),
        ),
        title: Image.asset("assets/logo.png", height: 60),
      ),
    );
  }
}
