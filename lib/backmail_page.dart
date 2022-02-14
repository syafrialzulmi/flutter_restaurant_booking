import 'package:flutter/material.dart';

class BackMail extends StatelessWidget {
  const BackMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
            ),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xff32B768),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_rounded,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Success',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff374151),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Please check your email for create a new password',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff6B7280),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Can't get email? ",
                    style: TextStyle(
                      color: Color(0xff242323),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Resubmit ',
                    style: TextStyle(
                      color: Color(0xff32B768),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Reset Password',
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
          ],
        ),
      ),
    );
  }
}
