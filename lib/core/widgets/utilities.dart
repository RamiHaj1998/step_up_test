import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:step_up_test/core/di/injection_container.dart';
import 'package:step_up_test/core/utils/configs/theme/app_colors.dart';

void showToast(BuildContext context, String msg, {Color? backgroundColor}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: backgroundColor ?? getIt<AppColors>().azure,
      textColor: getIt<AppColors>().primary,
      fontSize: 15.sp);
}

Future<String> getTimezone() async {
  var timeZone = (await FlutterTimezone.getLocalTimezone()).split('/')[1];

  ///Get country name
  timeZone =
  (timeZone.split('/')).length > 1 ? timeZone.split('/')[1] : timeZone;
  return '$timeZone ${DateTime.now().timeZoneName}';
}
