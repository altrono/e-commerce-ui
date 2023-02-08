import 'package:e_commerce_app_ui/widgets/top_container.dart';
import 'package:flutter/material.dart';

class ProdcutDispalyScreen extends StatefulWidget {
  const ProdcutDispalyScreen({Key? key}) : super(key: key);

  @override
  State<ProdcutDispalyScreen> createState() => _ProdcutDispalyScreenState();
}

class _ProdcutDispalyScreenState extends State<ProdcutDispalyScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Column(
        children: [
            const TopContainer(
                title: 'ALTRONO IMPARA',
                searchBarTitle: 'Search Product',
            ),

           //  tab bar and tab views

        ],
      ),
    );
  }
}
