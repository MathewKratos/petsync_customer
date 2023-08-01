import 'package:flutter/material.dart';
import 'package:petsync_customer/main.dart';
import 'package:petsync_customer/models/onboarding_model.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Current Address'),
                          Text('4/59 Mangallai amman koil street...'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                            top: 20,
                          ),
                          width: 40.0,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.redAccent,
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(6), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48), // Image radius
                              child: Image.asset(
                                'assets/images/temp/pet1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text('select pet'),
                      )
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                        ),
                        width: 250.0,
                        height: 150.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.redAccent,
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.asset(
                              'assets/images/temp/pet1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                        ),
                        width: 250.0,
                        height: 150.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.redAccent,
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.asset(
                              'assets/images/temp/pet2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Container(
                        margin:
                            const EdgeInsets.only(left: 20, top: 20, right: 20),
                        width: 250.0,
                        height: 150.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.redAccent,
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.asset(
                              'assets/images/temp/pet3.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: const Text(
                  'Our Valuable Service',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                        ),
                        width: 200.0,
                        height: 150.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.redAccent,
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(38), // Image radius
                            child: Image.asset(
                              'assets/images/temp/pet4.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        width: 200.0,
                        height: 150.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.redAccent,
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(38), // Image radius
                            child: Image.asset(
                              'assets/images/temp/pet5.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Container(
                        margin:
                            const EdgeInsets.only(left: 20, top: 20, right: 20),
                        width: 200.0,
                        height: 150.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.redAccent,
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(38), // Image radius
                            child: Image.asset(
                              'assets/images/temp/pet6.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: const Text(
                  'Find the doctor for common symptoms',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Select your top Doctor 24/7',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
