import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:e_commerce_app_ui/widgets/product_display_list_view.dart';
import 'package:e_commerce_app_ui/widgets/top_container.dart';
import 'package:flutter/material.dart';

class ProdcutDispalyScreen extends StatefulWidget {
  const ProdcutDispalyScreen({Key? key}) : super(key: key);

  @override
  State<ProdcutDispalyScreen> createState() => _ProdcutDispalyScreenState();
}

class _ProdcutDispalyScreenState extends State<ProdcutDispalyScreen>
  with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedValue = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 2,
        vsync: this,
        initialIndex: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

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
          TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: kBackgroundColor,
              indicatorSize: TabBarIndicatorSize.label,
              onTap: (value){
                setState(() {
                  selectedValue = value;
                });
                tabController.animateTo(value);
              },
              tabs: [
                Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: selectedValue == 0
                          ? kBackgroundColor
                          : kGreyColor.withOpacity(0.8),
                      boxShadow: selectedValue == 0
                            ? [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset:const  Offset(0, 1)
                              )
                      ]
                            : null
                  ),
                  child: const Text(
                    'Trending',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: selectedValue == 1
                          ? kBackgroundColor
                          : kGreyColor.withOpacity(0.8),
                      boxShadow: selectedValue == 1
                          ? [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset:const  Offset(0, 1)
                        )
                      ]
                          : null
                  ),
                  child: const Text(
                    'Clothing',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
          ),

        //  tab view
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                ProductDisplayWidget(),
                ProductDisplayWidget(),
                // ProdcutDispalyScreen(),
              ],
            ),
          )

        ],
      ),
    );
  }
}
