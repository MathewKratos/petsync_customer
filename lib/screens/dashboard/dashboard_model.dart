import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:petsync_customer/api/usermodel.dart';

class DartApi {
  final List<UserModel> result;
  DartApi({required this.result});

  factory DartApi.fromjson(Map<String, dynamic> json) {
    return DartApi(
        result: List.from(json['results'].map((x) => UserModel.fromjson(x))));
  }
}

Future<DartApi> fetchAlbum() async {
  final response = await http.get(Uri.parse('https://randomuser.me/api/'));

  if (response.statusCode == 200) {
    return DartApi.fromjson(json.decode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}

class DashboardScreens extends StatefulWidget {
  const DashboardScreens({super.key});

  @override
  State<DashboardScreens> createState() => _DashboardScreensState();
}

class _DashboardScreensState extends State<DashboardScreens> {
  List<UserModel> users = [];



  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchAlbum(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            DartApi data = snapshot.data!;
            List<UserModel> users = data.result;
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: ((context, Index) {
                          UserModel user = users[Index];
                          return RefreshIndicator(
                            onRefresh: () async {
                              setState(() {

                              });
                            },
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  '${user.location.street.number} ${user.location.street.name}'),
                                              Text(
                                                  '${user.location.city} ${user.location.state} ${user.location.postcode}'),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                              margin: const EdgeInsets.only(
                                                left: 20,
                                                top: 20,
                                              ),
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                                color: Colors.redAccent,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        6), // Image border
                                                child: SizedBox.fromSize(
                                                  size: const Size.fromRadius(
                                                      48), // Image radius
                                                  child: Image.network('${user.picture.thumbnail}')
                                                ),
                                              )),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
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
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.redAccent,
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                  20), // Image border
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(
                                                    48), // Image radius
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
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.redAccent,
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                  20), // Image border
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(
                                                    48), // Image radius
                                                child: Image.asset(
                                                  'assets/images/temp/pet2.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            )),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                left: 20, top: 20, right: 20),
                                            width: 250.0,
                                            height: 150.0,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.redAccent,
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                  20), // Image border
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(
                                                    48), // Image radius
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
                                    margin:
                                        const EdgeInsets.only(top: 30, left: 20),
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
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.redAccent,
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                  20), // Image border
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(
                                                    38), // Image radius
                                                child: Image.asset(
                                                  'assets/images/temp/pet4.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            )),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                left: 20, top: 20),
                                            width: 200.0,
                                            height: 150.0,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.redAccent,
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                  20), // Image border
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(
                                                    38), // Image radius
                                                child: Image.asset(
                                                  'assets/images/temp/pet5.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            )),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                left: 20, top: 20, right: 20),
                                            width: 200.0,
                                            height: 150.0,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.redAccent,
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                  20), // Image border
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(
                                                    38), // Image radius
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
                                    margin:
                                        const EdgeInsets.only(top: 30, left: 20),
                                    child: const Text(
                                      'Find the doctor for common symptoms',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 20, top: 10),
                                    child: Text(
                                      'Select your top Doctor 24/7',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                          ;
                        })))
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.hasError}');
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }));
  }
}
