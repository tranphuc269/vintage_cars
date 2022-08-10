import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vintage_cars/app_theme.dart';
import 'package:vintage_cars/car_model.dart';

import 'car_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 100),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/logo.png.png',
                    height: 52,
                    width: 160,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.only(top: 24, bottom: 28.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 72,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: kBackgroundButtonSelectCategory,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                          ),
                        ),
                        child: const Text(
                          'Hot',
                          style: TextStyle(fontSize: 14, color: kWhite),
                        ),
                      ),
                      Container(
                        width: 72,
                        alignment: Alignment.center,
                        child: const Text(
                          'American',
                          style: TextStyle(fontSize: 14, color: kBlack),
                        ),
                      ),
                      Container(
                        width: 72,
                        alignment: Alignment.center,
                        child: const Text(
                          'French',
                          style: TextStyle(fontSize: 14, color: kBlack),
                        ),
                      ),
                      Container(
                        width: 72,
                        alignment: Alignment.center,
                        child: const Text(
                          'Mexico',
                          style: TextStyle(fontSize: 14, color: kBlack),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Near you',
                      style: TextStyle(color: kBlack, fontSize: 16),
                    ),
                    ...List.generate(
                      CarModel.dummyCars().length,
                      (index) => CarComponent(
                        model: CarModel.dummyCars()[index],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 80,
                        margin: const EdgeInsets.only(
                            right: 50, top: 12, bottom: 32),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: kBackgroundButtonViewAll,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(6),
                              topRight: Radius.circular(6)),
                        ),
                        height: 32,
                        child: const Text(
                          'View All',
                          style: TextStyle(color: kWhite, fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 40, left: 15),
                  width: 240,
                  child: DottedBorder(
                    strokeWidth: 1,
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    color: Colors.black54,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/paper.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            left: -24,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Image.asset('assets/tabbar.png'),
                  Positioned.fill(
                    top: MediaQuery.of(context).viewPadding.top + 24,
                    bottom: MediaQuery.of(context).viewPadding.bottom + 24,
                    left: -30,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/ic_menu.png'),
                          const RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'My  Profile',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'Notification',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'Invoice',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'Home',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Image.asset('assets/cart.png'),
                        ],
                      ),
                    ),
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
