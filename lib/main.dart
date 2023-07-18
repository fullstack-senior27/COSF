import 'package:cosmetropolis/environment.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:flutter/services.dart';

// main func to run the app
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: kBlack, // navigation bar color
      statusBarColor: kWhite, // status bar color
    ),
  );
  Environment();
}
