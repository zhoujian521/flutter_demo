import 'package:flutter/material.dart';

class Utils {
  static getPlatform(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return "iOS";
    } else if (Theme.of(context).platform == TargetPlatform.android) {
      return "android";
    } else if (Theme.of(context).platform == TargetPlatform.fuchsia) {
      return "fuchsia";
    } else {
      return "not recognised ";
    }
  }
}
