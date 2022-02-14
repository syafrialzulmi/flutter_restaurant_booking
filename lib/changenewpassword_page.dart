import 'package:flutter/material.dart';

class ChangeNewPassword extends StatelessWidget {
  const ChangeNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 115,
            ),
            const Text(
              'Change New Password',
              style: TextStyle(
                color: Color(0xff374151),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Text(
              'Enter your registered email below',
              style: TextStyle(
                color: Color(0xff9CA3AF),
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 56,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'New Password',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff374151),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  hintText: 'Enter your new password'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Confirm Password',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff374151),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  hintText: 'Enter your confirm password'),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(),
            ),
            Center(
              child: ElevatedButton(
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
            ),
          ],
        ),
      ),
    );
  }
}
