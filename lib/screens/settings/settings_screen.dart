import 'package:flutter/material.dart';
import 'package:petsync_customer/api/usermodel.dart';
import 'package:petsync_customer/constants/app_route.dart';
import 'package:petsync_customer/constants/sizing.dart';
import 'package:petsync_customer/screens/dashboard/dashboard_model.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: FutureBuilder(
        future: fetchAlbum(),
        builder: ((context, snapshot){
          if (snapshot.hasData){
            DartApi data = snapshot.data!;
            List<UserModel> users = data.result;
            return Column(
              children: [
                Expanded(child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index){
                  UserModel user =  users[index];
                  return RefreshIndicator(child: SingleChildScrollView(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          child:Row(
                            children: [
                              const Stack(alignment: Alignment.bottomRight, children: [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                  AssetImage('assets/images/temp/profile_picture.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.photo_camera,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                )
                              ]),
                              const SizedBox(width: kDefaultPadding * 2),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${user.name.title} ${user.name.first} ${user.name.last}',
                                    style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  Text('${user.email}'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, AppRoute.editProfile);
                                      },
                                      child: const Text('Edit Profile')),
                                  /* ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfile()));
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.red),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                ),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )) */
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding),
                        for (int i = 0; i < 8; i++)
                          const ListTile(
                            leading: Icon(Icons.favorite_outline),
                            minLeadingWidth: kDefaultPadding,
                            title: Text('Favourites'),
                            trailing: Icon(Icons.navigate_next),
                            dense: true,
                          ),

                      ],
                    ),
                  ), onRefresh: () async {
                    setState(() {

                    });
                  });
                }))
              ],
            );
          }
          else if (snapshot.hasError){
            return Text('${snapshot.hasError}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        })));
  }
}
