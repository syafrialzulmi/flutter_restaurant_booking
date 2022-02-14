import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 115,
            ),
            Text(
              'Forget Password',
              style: TextStyle(
                color: Color(0xff374151),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Enter your registered email below',
              style: TextStyle(
                color: Color(0xff9CA3AF),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 56,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Email address',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff374151),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  hintText: 'Eg namaemail@emailkamu.com'),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'Remember the password? ',
                  style: TextStyle(
                    color: Color(0xff242323),
                  ),
                ),
                TextSpan(
                  text: 'Sign in ',
                  style: TextStyle(
                      color: Color(0xff32B768), fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            Expanded(
              child: Container(),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Submit',
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
