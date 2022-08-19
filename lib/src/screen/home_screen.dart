import 'package:flutter/material.dart';
import 'package:weather_app/component/card_title.dart';
import 'package:weather_app/component/category_card.dart';
import 'package:weather_app/component/main_app_bar.dart';
import 'package:weather_app/component/main_card.dart';
import 'package:weather_app/component/main_drawer.dart';
import 'package:weather_app/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: MainDrawer(),
      body: CustomScrollView(
        slivers: [
          MainAppBar(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CategoryCard(),
                SizedBox(height: 16.0),
                MainCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CardTitle(
                        title: '시간별 미세먼지',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
