import 'package:e_commerce_app_ui/helper_methods/helper_methods.dart';
import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:e_commerce_app_ui/utils/utils.dart';
import 'package:e_commerce_app_ui/widgets/image_list_view.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
           //  image transition
           Positioned(
              top: -10,
              left: -150,
              child: Row(
                children: const [
                  ImageListView(startIndex: 0,),
                  ImageListView(startIndex: 1,),
                  ImageListView(startIndex: 2,),
                ],
              ),
           ),

           //  title
          Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
              child: const Text(
                'ALTRONO IMPARA',
                textAlign: TextAlign.center,
                style: kTitleStyle,
              ),
          ),

        //  information screen
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white60,
                    Colors.white,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Your Appearance \nShows Your Quality',
                      style: kNormalStyle.copyWith(fontSize: 30, height: 1.3),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30,),
                  Text(
                    'Change The Quality Of Your\nAppearance with ALTRONO IMPARA',
                    style: kNormalStyle.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildIndicators()!,
                  )
                ],
              ),
            ),
        )

        ],
      ),
    );
  }
}
