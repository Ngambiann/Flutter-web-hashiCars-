import 'package:flutter/material.dart';
import 'package:hashicars/extensions.dart';
import 'package:hashicars/pages/homepage/components/cartypes.dart';
import 'package:hashicars/pages/homepage/sections/hero_searchbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeroSearchbar(),
          SizedBox(height: 10),
          Text('Research By Type', style: context.textStyle.headlinelg),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SingleChildScrollView(
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      child:Row(children: [
                        Cartypes(
                          onTapped: (){},
                          illustrationimage: "assets/images/suv-illustration.png",
                          illustrationname: "SUVs",
                        ),
                        SizedBox(width: 20),
                        Cartypes(
                          onTapped: (){},
                          illustrationimage:
                              "assets/images/sedan-illustration.png",
                          illustrationname: "Sedans",
                        ),
                         SizedBox(width: 20),
                        Cartypes(
                          onTapped: (){},
                          illustrationimage:
                              "assets/images/Hatchback-illustration.png",
                          illustrationname: "HatchBacks",
                        ),
                         SizedBox(width: 20),
                        Cartypes(
                          onTapped: (){},
                          illustrationimage:
                              "assets/images/pickup-illustration.png",
                          illustrationname: "Trucks",
                        ),
                      ],) 
                    ),
                  
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
