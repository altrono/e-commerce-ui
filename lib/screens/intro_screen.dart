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
              child: Text(
                'ALTRONO IMPARA',
                textAlign: TextAlign.center,
                style: kTitleStyle,
              ),
          ),

        ],
      ),
    );
  }
}
