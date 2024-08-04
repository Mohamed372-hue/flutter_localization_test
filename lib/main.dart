import 'package:device_preview/device_preview.dart';
import 'package:flutetr_localization/core/theme.dart';
import 'package:flutetr_localization/screens/home_.dart';
import 'package:flutetr_localization/state/cubit/apptheme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => AppthemeCubit(),
    child: DevicePreview(builder: (context) => FlutterLocalization()),
  ));
}

class FlutterLocalization extends StatelessWidget {
  const FlutterLocalization({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppthemeCubit, AppthemeState>(
      builder: (context, state) {
        AppthemeCubit cubit = BlocProvider.of<AppthemeCubit>(context);

        return MaterialApp(
          builder: DevicePreview.appBuilder,
          locale: cubit.lan ? const Locale('ar') : const Locale('en'),
          theme: themelight(),
          darkTheme: themedark(),
          themeMode: cubit.val ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: const MyHomePage(),
        );
      },
    );
  }
}
