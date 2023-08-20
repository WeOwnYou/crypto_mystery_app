import 'dart:async';
import 'package:crypto_mystery/src/app_view.dart';
import 'package:flutter/material.dart';

void run() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }, (error, stack) {
    debugPrint('ERROR');
    debugPrint('$error');
    debugPrint('$stack');
    debugPrint('END ERROR');
  });
}
