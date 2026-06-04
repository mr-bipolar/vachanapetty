import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vachanapetty/assets/app_colors.dart';
import 'package:vachanapetty/assets/assets.dart';
import 'package:vachanapetty/core/enum/font_family.dart';
import 'package:vachanapetty/core/extensions/space_extension.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/home_screen.dart';
import 'package:vachanapetty/features/presentation/widgets/base_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // full Screen  View
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    Future.delayed(const Duration(seconds: 4), _navigateToHome);
  }

  void _navigateToHome() {
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWidget(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset(Assets.churchIcon,
              width: 80,
              height: 80,
              colorFilter:
                  const ColorFilter.mode(AppColors.darkGold, BlendMode.srcIn)),
          12.h,
          Text(
            Assets.appName,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.darkGold,
                fontFamily: FontFamily.cinzel.family),
          )
        ]),
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }
}
