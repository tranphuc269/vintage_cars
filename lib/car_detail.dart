import 'package:flutter/material.dart';

import 'app_theme.dart';

class CarDetail extends StatelessWidget {
  const CarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20)
                .copyWith(top: 180, bottom: 43),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      kGradientScoreLow,
                      Color(0xFFB78E2F),
                      Color(0xFFAB842B),
                      Color(0xFF80621E)
                    ],
                    begin: FractionalOffset(0.0, 0),
                    end: FractionalOffset(1, 1),
                    stops: [0.6, 0.8, 0.85, 1],
                    tileMode: TileMode.repeated),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(64),
                    bottomRight: Radius.circular(12))),
            padding:
                const EdgeInsets.symmetric(horizontal: 26).copyWith(bottom: 28),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Score',
                  style: TextStyle(color: kWhite, fontSize: 17, height: 1.5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    5,
                    (index) => Icon(
                      Icons.workspace_premium_outlined,
                      color: index != 4 ? kWhite : const Color(0xFF707070),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const Text(
                  'The Ford Motor Company Falcon XY GT is a sports sedan based on the Ford Falcon XY.',
                  style: TextStyle(color: kWhite),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16)
                .copyWith(bottom: 180, top: viewPadding.top + 30),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [
                    Color(0xFFFFFFE6),
                    Color(0xFFDBDBC5),
                    Color(0xFFC7C7B3),
                    Color(0xFFC0C0AD)
                  ],
                  begin: FractionalOffset(0.0, 0),
                  end: FractionalOffset(1, 1),
                  stops: [0.6, 0.8, 0.85, 1],
                  tileMode: TileMode.repeated),
              borderRadius: BorderRadius.circular(24),
            ),
            width: size.width,
            padding: const EdgeInsets.fromLTRB(30, 40, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/ic_medal_2.png',
                    width: 76,
                    height: 76,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 280,
                ),
                const Text(
                  'Ford XY Falcon GT',
                  style: TextStyle(
                      color: kBlack, fontSize: 26, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'The Ford Motor Company Falcon XY GT is a sports sedan based on the Ford Falcon XY. Released in 1970 by Ford Australia,[1] with the GTHO Phase III released in 1971.[1] Some 1,557 units were produced from September 1970 to December 1971 ',
                  style: TextStyle(fontSize: 12, height: 1.5),
                ),
                Image.asset('assets/car_4.png',height: 78, width: 170,)
              ],
            ),
          ),
          Positioned.fill(
            top: viewPadding.top,
            bottom: 124,
            right: 20,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/img_medal.png',
              ),
            ),
          ),
          Positioned.fill(
            top: viewPadding.top,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/logo_shadow.png',
                width: 224,
              ),
            ),
          ),
          Positioned(left: -size.width/2, top: viewPadding.top + 100,child: Image.asset('assets/car_3.png', height: 320,),)
        ],
      ),
    );
  }
}
