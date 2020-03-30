import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  // String message = params["message"]?.first;
  // String colorHex = params["color_hex"]?.first;
  // String result = params["result"]?.first;
  return HomeComponent();
});

/// Handles deep links into the app
/// To test on Android:
///
/// `adb shell am start -W -a android.intent.action.VIEW -d "fluro://deeplink?path=/message&mesage=fluro%20rocks%21%21" com.theyakka.fluro`
