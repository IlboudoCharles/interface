import 'package:flutter/material.dart';
import 'package:realisation_interface/constants,/colors.dart';

import '../home_page.dart';
import '../widget_s/before_screen_widgets.dart';


class BeforeScreen extends StatelessWidget {
  const BeforeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          buildHeaderAndSearchBar(context),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildBanner(),
                  buildServiceCategories(),


                  buildPopularServices(),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      
      bottomNavigationBar: buildBottomNavBar(),
    );
  }
}