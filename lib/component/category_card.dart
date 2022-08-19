import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_app/component/card_title.dart';
import 'package:weather_app/component/main_card.dart';
import 'package:weather_app/component/main_stat.dart';
import 'package:weather_app/const/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: MainCard(
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CardTitle(title: '종류별 통계'),
              SizedBox(height: 8.0),
              Expanded(
                child: ListView(
                  physics: PageScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    20,
                    (index) => MainStat(
                      category: '미세먼지',
                      imgPath: 'assets/img/best.png',
                      level: '최고',
                      stat: '0' + '㎍/m³',
                      width: constraint.maxWidth / 3,
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
