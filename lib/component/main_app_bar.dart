
import 'package:flutter/material.dart';
import 'package:weather_app/const/colors.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: 500,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                Text('서울', style: h1),
                SizedBox(height: 8),
                Text(DateTime.now().toString(),
                    style: h1.copyWith(fontSize: 20)),
                SizedBox(height: 8),
                Image.asset('assets/img/mediocre.png',
                    width: MediaQuery.of(context).size.width / 2),
                SizedBox(height: 8),
                Text('보통', style: h1),
                SizedBox(height: 8),
                Text('나쁘지않네요', style: h1.copyWith(fontSize: 20,fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
