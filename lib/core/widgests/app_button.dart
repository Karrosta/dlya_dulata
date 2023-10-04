import 'package:dlya_dulata/core/consts/app_colors.dart';
import 'package:dlya_dulata/core/consts/app_paddings.dart';
import 'package:dlya_dulata/core/consts/app_text.dart';
import 'package:dlya_dulata/core/consts/getters.dart';
import 'package:dlya_dulata/core/widgests/wrapper_button.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return WrapperButton(
      child: Container(
        padding: AppPaddings.all18,
        decoration:
            BoxDecoration(borderRadius: 15.r, color: AppColors.ff000000),
        child: Text(
          'Отправить заявку',
          style: AppTextStyles.s17w400.copyWith(color: AppColors.ffFFFFFF),
        ),
      ),
      onPressed: () {},
    );
  }
}
