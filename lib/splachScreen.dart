import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_cryptocurrency/app2.dart';
import 'package:wallet_cryptocurrency/health.dart';

import 'Health/MyComponents/color.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _controller = PageController();
  late int selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blanc,
        toolbarHeight: 30,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              //color: noir,
              // image: DecorationImage(
              //   image: NetworkImage(
              //       'https://i.pinimg.com/564x/2d/32/1d/2d321da827e421167c2c457bf4edb1cc.jpg'),
              //   fit: BoxFit.cover,
              // ),
              ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 2,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    width: 150,
                    height: 5,
                    color: primary,
                    rotationAngle: 0,
                    verticalOffset: -10,
                    borderRadius: BorderRadius.circular(24),
                    // dotBorder: DotBorder(
                    //   padding: 2,
                    //   width: 1,
                    //   color: primary,
                    // ),
                  ),
                  dotDecoration: DotDecoration(
                    color: noirflou,
                    width: 50,
                    height: 5,
                    borderRadius: BorderRadius.circular(24),
                    verticalOffset: -10,
                  ),
                  // effect: const WormEffect(
                  //   dotHeight: 16,
                  //   dotWidth: 16,
                  //   //dotColor: selected = 0 ? primary : rouge,
                  //   type: WormType.thinUnderground,
                  // ),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      selected = index;

                      debugPrint(index.toString());
                    });
                  },
                  children: [
                    Health(),
                    App2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
