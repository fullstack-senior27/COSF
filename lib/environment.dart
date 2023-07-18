import 'package:cosmetropolis/app.dart';
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum EnvType {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class Environment {
  Environment() {
    // value = this;
    _init();
  }

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp();
    // await FirebaseMessagingProvider.init();
    await EasyLocalization.ensureInitialized();
    await SharedPreferenceService.init();
    try {
      // await dotenv.load();
    } catch (e) {
      Logger.write(e.toString());
    }
    runApp(
      ProviderScope(
        child: EasyLocalization(
          supportedLocales: const [
            Locale('en'),
            Locale('hi'),
          ],
          path: 'assets/languages',
          fallbackLocale: const Locale('en', 'US'),
          child: MyApp(),
        ),
      ),
    );
  }
}
