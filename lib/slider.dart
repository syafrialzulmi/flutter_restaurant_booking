import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderItem extends StatelessWidget {
  const SliderItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.image})
      : super(key: key);

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: SvgPicture.asset(
                image,
                width: 300,
              ),
            ),
            Flexible(
                flex: 1,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xff1F2937),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xff4B5563),
                        fontSize: 12,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
