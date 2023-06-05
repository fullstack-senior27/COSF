import 'dart:html';

import 'package:calendar_view/calendar_view.dart';
import 'package:cosmetropolis/domain/providers/router_provider.dart';
import 'package:cosmetropolis/domain/providers/theme_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

DateTime get _now => DateTime.now();

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    final themeManager = ref.watch(themeProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return CalendarControllerProvider(
          controller: EventController(),
          child: MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            // theme: AppThemes.lightTheme,
            // darkTheme: AppThemes.darkTheme,
            routeInformationParser: goRouter.routeInformationParser,
            routerDelegate: goRouter.routerDelegate,
            routeInformationProvider: goRouter.routeInformationProvider,
            themeMode: themeManager.currentTheme,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kBlue),
            ).copyWith(
              scaffoldBackgroundColor: Colors.white,
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: kBlue,
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                fillColor: kWhite,
                filled: true,
                floatingLabelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: const BorderSide(
                    color: kBlue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: const BorderSide(
                    color: kBlue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: const BorderSide(
                    color: kBlue,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              dialogTheme: DialogTheme(
                surfaceTintColor: kWhite,
                backgroundColor: kWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

List<CalendarEventData<Event>> _events = [
  CalendarEventData(
    date: _now,
    event: Event("Today is Joe's birthday."),
    title: "Project meeting",
    description: "Today is project meeting.",
    startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
    endTime: DateTime(_now.year, _now.month, _now.day, 22),
  ),
  CalendarEventData(
    date: _now.add(const Duration(days: 1)),
    startTime: DateTime(_now.year, _now.month, _now.day, 18),
    endTime: DateTime(_now.year, _now.month, _now.day, 19),
    event: Event("Today is Joe's birthday."),
    title: "Wedding anniversary",
    description: "Attend uncle's wedding anniversary.",
  ),
  CalendarEventData(
    date: _now,
    startTime: DateTime(_now.year, _now.month, _now.day, 14),
    endTime: DateTime(_now.year, _now.month, _now.day, 17),
    event: Event("Today is Joe's birthday."),
    title: "Football Tournament",
    description: "Go to football tournament.",
  ),
  CalendarEventData(
    date: _now.add(const Duration(days: 3)),
    startTime: DateTime(
      _now.add(const Duration(days: 3)).year,
      _now.add(const Duration(days: 3)).month,
      _now.add(const Duration(days: 3)).day,
      10,
    ),
    endTime: DateTime(
      _now.add(const Duration(days: 3)).year,
      _now.add(const Duration(days: 3)).month,
      _now.add(const Duration(days: 3)).day,
      14,
    ),
    event: Event("Today is Joe's birthday."),
    title: "Sprint Meeting.",
    description: "Last day of project submission for last year.",
  ),
  CalendarEventData(
    date: _now.subtract(const Duration(days: 2)),
    startTime: DateTime(
      _now.subtract(const Duration(days: 2)).year,
      _now.subtract(const Duration(days: 2)).month,
      _now.subtract(const Duration(days: 2)).day,
      14,
    ),
    endTime: DateTime(
      _now.subtract(const Duration(days: 2)).year,
      _now.subtract(const Duration(days: 2)).month,
      _now.subtract(const Duration(days: 2)).day,
      16,
    ),
    event: Event("Today is Joe's birthday."),
    title: "Team Meeting",
    description: "Team Meeting",
  ),
  CalendarEventData(
    date: _now.subtract(const Duration(days: 2)),
    startTime: DateTime(
      _now.subtract(const Duration(days: 2)).year,
      _now.subtract(const Duration(days: 2)).month,
      _now.subtract(const Duration(days: 2)).day,
      10,
    ),
    endTime: DateTime(
      _now.subtract(const Duration(days: 2)).year,
      _now.subtract(const Duration(days: 2)).month,
      _now.subtract(const Duration(days: 2)).day,
      12,
    ),
    event: Event("Today is Joe's birthday."),
    title: "Chemistry Viva",
    description: "Today is Joe's birthday.",
  ),
];
