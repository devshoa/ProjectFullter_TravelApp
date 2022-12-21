import 'package:flutter/material.dart';
import 'package:neoviettourist/core/helpers/asset_helper.dart';
import 'package:neoviettourist/core/helpers/image_helper.dart';
import 'package:neoviettourist/representation/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  // định nghĩa tên của class để chuyển màng hình
  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirecIntroScreen();
  }

/**
 * phương thức này sẽ cho giao diện splash screend sẽ hiển thị trong 2 giây để các mành hình kế tiếp loadData
 * sau khi kết thúc 2 giây thì sẽ chuyển sang màng hình 
 */
  void redirecIntroScreen() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed(IntroScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // positoned fill lấy đầy hết khoảng trống
        Positioned.fill(
          child: ImageHelper.loadFromAsset(AssetHelper.imageBackGroundSplash,
              fit: BoxFit.fitWidth),
        ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(AssetHelper.imageCircleSplash,
              fit: BoxFit.fitWidth),
        )
      ],
    );
  }
}
