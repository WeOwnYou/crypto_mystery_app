import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

abstract class PlatformDependentBehavior {
  static Future<T?>? callMethodByPlatform<T>({
    Future<T?> Function()? androidMethod,
    Future<T?> Function()? iosMethod,
    Future<T?> Function()? webMethod,
  }) async {
    if (Platform.isAndroid) {
      return androidMethod?.call();
    } else if (Platform.isIOS) {
      return iosMethod?.call();
    } else if (kIsWeb) {
      return webMethod?.call();
    } else {
      throw Exception('unhandled error');
    }
  }

  static Widget buildWidgetByPlatform({
    Widget? androidWidget,
    Widget? iosWidget,
    Widget? webWidget,
  }) {
    assert(
      (androidWidget != null) || (iosWidget != null) || (webWidget != null),
    );
    if (Platform.isAndroid && androidWidget != null) {
      return androidWidget;
    } else if (Platform.isIOS && iosWidget != null) {
      return iosWidget;
    } else if (kIsWeb && webWidget != null) {
      return webWidget;
    } else {
      throw Exception('unhandled error');
    }
  }
}
