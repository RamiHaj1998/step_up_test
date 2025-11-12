import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {required this.textInputType,
      super.key,
      this.textEditingController,
      this.onPressed,
      this.validator,
      this.textInputAction,
      this.obscureText = false,
      this.autoFocus = false,
      this.prefix,
      this.suffix,
      this.hintText,
      this.onChange,
      this.onSubmit,
      this.errorText,
      this.focusNode,
      this.enabled = true,
      this.label,
      this.onSave,
      this.maxLength,
      this.maxLines,
      this.scrollPadding,
      this.isSide = false,
      this.padding,
      this.inputFormatters,
      this.radius,
      this.inputBorder,
      this.filled,
      this.filledColor,
      this.hintStyle,
      this.style,
      this.textDirection,
      this.readOnly,
      this.textAlign,
      this.suffixIconConstraints,
      this.autoValidateMode});

  final TextEditingController? textEditingController;
  final Function()? onPressed;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final TextInputAction? textInputAction;
  final Widget? prefix;
  final Widget? suffix;
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autoFocus;
  final Function(String)? onChange;
  final Function(String)? onSubmit;
  final Function(String?)? onSave;
  final bool enabled;
  final FocusNode? focusNode;
  final Widget? label;
  final bool isSide;
  final int? maxLength;
  final int? maxLines;
  final EdgeInsets? scrollPadding;
  final EdgeInsetsGeometry? padding;
  final List<TextInputFormatter>? inputFormatters;
  final double? radius;
  final InputBorder? inputBorder;
  final bool? filled;
  final Color? filledColor;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final TextDirection? textDirection;
  final bool? readOnly;
  final TextAlign? textAlign;
  final BoxConstraints? suffixIconConstraints;
  final AutovalidateMode? autoValidateMode;

  @override
  Widget build(BuildContext context) {
    AppColors appColors = getIt<AppColors>();
    return TextFormField(
      key: key,
      autovalidateMode: autoValidateMode,
      readOnly: readOnly ?? false,
      controller: textEditingController,
      textDirection: textDirection,
      onTap: onPressed,
      enabled: enabled,
      onSaved: onSave,
      maxLength: maxLength,
      maxLines: maxLines,
      focusNode: focusNode,
      autofocus: autoFocus,
      scrollPadding: scrollPadding ?? const EdgeInsets.all(20),
      cursorColor: appColors.azure,
      inputFormatters: inputFormatters,
      textAlign: textAlign ?? TextAlign.start,
      style: style ??
          Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w300),
      decoration: InputDecoration(
          contentPadding: padding ?? const EdgeInsets.all(16),
          prefixIconConstraints:
              BoxConstraints(maxHeight: 16.r, maxWidth: 16.r),
          suffixIconConstraints: suffixIconConstraints ??
              BoxConstraints(maxHeight: 24.r, maxWidth: 24.r),
          prefixIcon: prefix,
          suffixIcon: suffix,
          hintText: hintText,
          label: label,
          counterText: '',
          filled: filled,
          fillColor: filledColor ?? appColors.white,
          hintStyle: hintStyle ??
              Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: appColors.grayDarker, fontWeight: FontWeight.w400),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 10),
              borderSide: BorderSide(color: appColors.grayDarker)),
          focusedBorder: isSide == true
              ? inputBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius ?? 10),
                      borderSide: BorderSide(color: appColors.grayDarker))
              : InputBorder.none,
          enabledBorder: isSide == true
              ? inputBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius ?? 10),
                      borderSide: BorderSide(color: appColors.grayDarker))
              : InputBorder.none,
          errorBorder: isSide == true
              ? inputBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius ?? 10),
                      borderSide: BorderSide(color: appColors.grayDarker))
              : InputBorder.none,
          border: isSide == true
              ? inputBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius ?? 10))
              : InputBorder.none,
          errorStyle: const TextStyle(color: Colors.red, fontSize: 10),
          errorText: errorText),
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      validator: validator,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: obscureText,
    );
  }
}
