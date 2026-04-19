import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vachanapetty/assets/assets.dart';
import 'package:vachanapetty/config/dependency/di_injection.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';
import 'package:vachanapetty/features/presentation/pages/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    systemNavigationBarContrastEnforced: false,
  ));

  await init();
  runApp(BlocProvider(
    create: (context) => di<QuotesBloc>(),
    child: MaterialApp(
      title: Assets.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Assets.primaryColor,
      ),
      home: const SplashScreen(),
    ),
  ));
}
