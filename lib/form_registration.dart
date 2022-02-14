import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void FormRegistration(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    // isDismissible: false,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
    builder: (BuildContext context) {
      return SizedBox(
        height: 550,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            children: [
              Container(
                height: 5,
                width: 50,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                height: 40,
              ),
              DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      const TabBar(
                        indicatorColor: Color(0xff32B768),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        labelColor: Color(0xff32B768),
                        unselectedLabelColor: Color(0xff89909E),
                        tabs: <Widget>[
                          Tab(
                            text: 'Create Account',
                          ),
                          Tab(
                            text: 'Login',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 400,
                        child: TabBarView(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Full Name',
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
                                    hintText: 'Enter your full name'),
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
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Password',
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
                                    hintText: 'Enter your password'),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Registration',
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
                              const SizedBox(
                                height: 15,
                              ),
                              Center(
                                child: ElevatedButton.icon(
                                  icon: SvgPicture.asset(
                                      'assets/images/ic_google.svg'),
                                  onPressed: () {},
                                  label: const Text(
                                    'Sign up with Google',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff222222),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffF4F4F4),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Password',
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
                                    hintText: 'Enter your password'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {},
                                  child: const Text(
                                    'Forget Password?',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff32B768),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Login',
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
                              const SizedBox(
                                height: 15,
                              ),
                              Center(
                                child: ElevatedButton.icon(
                                  icon: SvgPicture.asset(
                                      'assets/images/ic_google.svg'),
                                  onPressed: () {},
                                  label: const Text(
                                    'Login with Google',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff222222),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffF4F4F4),
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
                        ]),
                      )
                    ],
                  )),
            ],
          ),
        ),
      );
    },
  );
}
