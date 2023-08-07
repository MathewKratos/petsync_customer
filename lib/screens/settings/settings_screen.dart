import 'package:flutter/material.dart';
import 'package:petsync_customer/constants/app_route.dart';
import 'package:petsync_customer/constants/sizing.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: profileCard(context),
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
            /* const ListTile(
              title: Text('Downloads'),
              leading: Icon(CupertinoIcons.cloud_download),
              trailing: Icon(Icons.navigate_next),
              dense: true,
            ),
            Container(
              height: 50,
              child: const ListTile(
                title: Text('Language'),
                leading: Icon(Icons.language),
                trailing: Icon(Icons.navigate_next),
                dense: true,
              ),
            ),
            Container(
              height: 50,
              child: const ListTile(
                title: Text('Location'),
                leading: Icon(CupertinoIcons.location),
                trailing: Icon(Icons.navigate_next),
                dense: true,
              ),
            ),
            Container(
              height: 50,
              child: const ListTile(
                title: Text('Subscriptions'),
                leading: Icon(Icons.subscriptions),
                trailing: Icon(Icons.navigate_next),
                dense: true,
              ),
            ),
            Container(
              height: 50,
              child: const ListTile(
                title: Text('Clear Cache'),
                leading: Icon(CupertinoIcons.delete),
                trailing: Icon(Icons.navigate_next),
                dense: true,
              ),
            ),
            Container(
              height: 50,
              child: const ListTile(
                title: Text('Cloud History'),
                leading: Icon(Icons.history),
                trailing: Icon(Icons.navigate_next),
                dense: true,
              ),
            ),
            Container(
              height: 50,
              child: const ListTile(
                title: Text('Log out'),
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                trailing: Icon(Icons.navigate_next),
                dense: true,
              ),
            ), */
          ],
        ),
      ),
    );
  }

  Row profileCard(BuildContext context) {
    return Row(
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
            const Text(
              'Your Profile Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('petSync@gmail.com'),
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
    );
  }
}
