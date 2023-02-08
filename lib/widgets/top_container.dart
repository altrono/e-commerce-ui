import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:e_commerce_app_ui/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopContainer extends StatelessWidget {
  final String title;
  final String searchBarTitle;
  const TopContainer({
    Key? key,
    required this.title,
    required this.searchBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  title
        Row(
          children: [
            Text(
                title,
                style: kNormalStyle.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,

                ),
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kGreyColor.withOpacity(0.8),
              ),
              child: Stack(
                children: [
                    Icon(FontAwesomeIcons.bell, color: Colors.black87, size: 20,),
                    Positioned(
                        right: 0,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: kOrangeColor,
                          ),
                        ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: CachedNetworkImage(
                imageUrl: 'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),

        // search bar
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: kGreyColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
              const SizedBox(width: 10,),
              Text(searchBarTitle, style: const TextStyle(color: Colors.black38, fontWeight: FontWeight.w400),)
            ],
          ),
        )

      //  search bar
      ],
    );
  }
}
