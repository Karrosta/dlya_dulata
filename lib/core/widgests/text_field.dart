import '../consts/app_colors.dart';
import '../consts/app_text.dart';
import '../consts/getters.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String label;
  final TextInputType? inputType;
  const CustomTextField({super.key, required this.hint, required this.label, this.inputType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.s17w400.copyWith(color: AppColors.ff8A8A8E),
        ),
        TextField(
          keyboardType: inputType,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: 12.r,
                  borderSide: const BorderSide(color: AppColors.ff8A8A8E)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: 12.r,
                  borderSide: const BorderSide(color: AppColors.ff8A8A8E)),
              hintText: hint,
              hintStyle:
                  AppTextStyles.s17w400.copyWith(color: AppColors.ff8A8A8E)),
        ),
      ],
    );
  }
}
