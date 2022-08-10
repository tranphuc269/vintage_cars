import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vintage_cars/car_model.dart';

import 'app_theme.dart';
import 'car_detail.dart';

class CarComponent extends StatelessWidget {
  const CarComponent({required this.model, Key? key}) : super(key: key);
  final CarModel model;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 170,
            margin: const EdgeInsets.only(top: 12),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: DottedBorder(
                strokeWidth: 0.5,
                color: Colors.black54,
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                child: ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)),
                    height: 140,
                    width: 260,
                    padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(top: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(model.name, style: const TextStyle(color: kWhite, fontSize: 18, fontWeight: FontWeight.w500, height: 2),),
                        const SizedBox(height: 8,),
                        Text(model.description, style: const TextStyle(color: kWhite, fontSize: 10),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: -12,
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                model.image,
                height: 120,
              ),
            ),
          )
        ],
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const CarDetail(), fullscreenDialog: true),
        );
      },
    );
  }
}
