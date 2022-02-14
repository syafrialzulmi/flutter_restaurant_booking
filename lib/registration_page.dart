import 'package:flutter/material.dart';
import '../form_registration.dart';
import 'package:flutter_svg/svg.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: SvgPicture.asset(
              'assets/images/order_success.svg',
              height: 225.0,
            )),
            const Text(
              'Welcome',
              style: TextStyle(
                color: Color(0xff1F2937),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Before enjoying Foodmedia Services',
              style: TextStyle(
                color: Color(0xff4B5563),
                fontSize: 14,
              ),
            ),
            const Text(
              'Please register first',
              style: TextStyle(
                color: Color(0xff4B5563),
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
              onPressed: () {
                FormRegistration(context);
              },
              child: const Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff32B768),
                fixedSize: const Size(256, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadowColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                FormRegistration(context);
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff10B981),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffD1FAE5),
                fixedSize: const Size(256, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadowColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'By logging in or registering, you have agreed to ',
                  style: TextStyle(
                    color: Color(0xff242323),
                  ),
                ),
                TextSpan(
                  text: 'Terms and Conditions ',
                  style: TextStyle(
                    color: Color(0xff32B768),
                  ),
                ),
                TextSpan(
                  text: 'And ',
                  style: TextStyle(
                    color: Color(0xff242323),
                  ),
                ),
                TextSpan(
                  text: 'Privacy Policy.',
                  style: TextStyle(
                    color: Color(0xff32B768),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
