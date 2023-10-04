import '../consts/app_colors.dart';
import '../consts/app_icons.dart';
import '../consts/app_paddings.dart';
import '../consts/app_text.dart';
import '../consts/getters.dart';
import '../../core/widgests/wrapper_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String label;
  final bool hasPop;
  final bool hasAva;
  final String? image;

  const CustomAppBar2(
      {Key? key,
      required this.title,
      this.hasPop = false,
      required this.label,
      this.image,
      this.hasAva = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // padding: AppPaddings.r15,
        color: AppColors.ffFFFFFF,
        child: Stack(
          children: [
            Offstage(
              offstage: !hasPop,
              child: Padding(
                padding: AppPaddings.l16,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: WrapperButton(
                    onPressed: () {
                      
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.chevronLeftBlue),
                        5.w,
                        Text(
                          label,
                          style: AppTextStyles.s17w500
                              .apply(color: AppColors.ff007AFF),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                title,
                style: AppTextStyles.s18w500,
              ),
            ),
            Offstage(
              offstage: !hasAva,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: AppPaddings.r15,
                  child: WrapperButton(
                    child: image != null
                        ? SvgPicture.asset(image!)
                        : SvgPicture.asset(AppIcons.avatar),
                        onPressed: () {},
                  ),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
