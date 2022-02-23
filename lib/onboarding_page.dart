import 'package:flutter/material.dart';
import 'package:flutter_restaurant_booking/slider.dart';
import 'package:flutter_svg/svg.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _page = [
    const SliderItem(
      title: 'Nearby restaurants',
      description:
          'You don\'t have to go far to find a good restaurant,we have provided all the restaurants that is near you',
      image: 'assets/images/tracking_maps.svg',
    ),
    const SliderItem(
      title: 'Select the Favorites Menu',
      description:
          'Now eat well, don\'t leave the house,You can choose your favorite food only with one click',
      image: 'assets/images/order_illustration.svg',
    ),
    const SliderItem(
      title: 'Good food at a cheap price',
      description: 'You can eat at expensive restaurants with affordable price',
      image: 'assets/images/safe_food.svg',
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Stack(
          children: [
            PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: _onchanged,
                controller: _controller,
                itemCount: _page.length,
                itemBuilder: (context, int index) {
                  return _page[index];
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xff4B5563),
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          List<Widget>.generate(_page.length, (int index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: (index == _currentPage) ? 20 : 10,
                          height: 10,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: (index == _currentPage)
                                ? const Color(0xff32B768)
                                : const Color(0xffE6E6E6),
                            // color: Color(0xffE6E6E6)
                          ),
                        );
                      }),
                    ),
                    InkWell(
                      child: const Icon(Icons.arrow_forward_rounded,
                          size: 24.0, color: Color(0xff32B768)),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
