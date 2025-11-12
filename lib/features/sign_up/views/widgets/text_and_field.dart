import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/assets.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';
import 'package:step_up_test/core/utils/configs/theme/app_dimensions.dart';
import 'package:step_up_test/core/utils/configs/theme/app_text_style_factory.dart';
import 'package:step_up_test/core/widgets/app_svg_image.dart';
import 'package:step_up_test/core/widgets/app_text_field.dart';

class TextAndField extends StatelessWidget {
  const TextAndField(
      {super.key,
      required this.controller,
      required this.textInputType,
      required this.title,
      required this.prefixIcon,
      this.onChange,
      this.suffix,
      this.hint,
      this.suffixIconConstraints,
      this.inputFormatters,
      this.validator,
      this.autoValidateMode});

  final TextEditingController controller;
  final TextInputType textInputType;
  final String title;
  final String prefixIcon;
  final void Function(String)? onChange;
  final Widget? suffix;
  final String? hint;
  final BoxConstraints? suffixIconConstraints;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: AppTextStyleFactory.body.copyWith(color: appColors.primary)),
        AppSpaces.onSides.verticalSpace,
        Row(
          children: [
            AppSvgImage(path: prefixIcon),
            AppSpaces.small.horizontalSpace,
            Expanded(
              child: AppTextField(
                textEditingController: controller,
                textInputType: textInputType,
                isSide: true,
                onChange: onChange,
                hintText: hint,
                suffixIconConstraints: suffixIconConstraints,
                inputFormatters: inputFormatters,
                validator: validator,
                autoValidateMode: autoValidateMode,
                suffix: suffix ??
                    InkWell(
                        onTap: () {
                          controller.clear();
                        },
                        child: const AppSvgImage(path: Assets.icClear)),
                inputBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: appColors.grayDarker)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
