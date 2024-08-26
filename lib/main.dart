import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';
import 'modules/hadeth/hadeth_details.dart';
import 'modules/layout/layout_screen.dart';
import 'modules/layout/manager/settings_provider.dart';
import 'modules/quran/quran_details.dart';
import 'modules/splash/screens/splash_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp( ChangeNotifierProvider(
    create:(context) => SettingsProvider(),
    child: EasyLocalization(
        supportedLocales:const [Locale('ar'), Locale('en')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        startLocale: const Locale("en"),

        child: const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: provider.themeMode,
      routes: {
        LayoutScreen.routeName: (context) => const LayoutScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
