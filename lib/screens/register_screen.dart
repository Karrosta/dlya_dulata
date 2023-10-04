import 'package:dlya_dulata/core/widgests/app_button.dart';

import '../../core/consts/app_colors.dart';
import '../../core/consts/app_paddings.dart';
import '../../core/consts/app_text.dart';
import '../../core/consts/getters.dart';
import '../../core/widgests/app_bar.dart';
import '../../core/widgests/text_field.dart';
import 'package:flutter/material.dart';

class NewCardScreen extends StatelessWidget {
  const NewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> label = ['Выберите дату', 'Выберите время'];
    List<String> help = ['Дата', 'Время'];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: const CustomAppBar2(
              title: 'Запись ',
              label: 'Назад',
              hasPop: true,
            ),
            body: Container(
              padding: AppPaddings.all18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Введите ваши данные',
                    style: AppTextStyles.s17w400
                        .copyWith(color: AppColors.ff8A8A8E),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: 12.r,
                            borderSide:
                                const BorderSide(color: AppColors.ff8A8A8E)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: 12.r,
                            borderSide:
                                const BorderSide(color: AppColors.ff8A8A8E)),
                        hintText: 'Ваше имя и фамилия',
                        hintStyle: AppTextStyles.s17w400
                            .copyWith(color: AppColors.ff8A8A8E)),
                  ),
                  16.h,
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16,
                      crossAxisCount: 2,
                    ),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomTextField(
                        inputType: TextInputType.datetime,
                        hint: help[index],
                        label: label[index],
                      );
                    },
                  ),
                  const Spacer(),
                  const Align(
                    alignment: Alignment.center,
                    child: AppButton(),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
