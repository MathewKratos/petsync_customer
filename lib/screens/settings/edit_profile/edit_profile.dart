import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  Text textStyles({required String data}) {
    return Text(
      data,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 16, height: 2.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        elevation: 0,
        title: const Center(
          child: Text(
            'Edit Profile',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.check,
                  color: Colors.black,
                )),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Center(
              child: Stack(alignment: Alignment.bottomRight, children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      AssetImage('assets/images/temp/profile_picture.jpg'),
                ),
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white,
                  child: Icon(
                    CupertinoIcons.camera,
                    color: Colors.black,
                  ),
                )
              ]),
            ),
            textStyles(data: 'Name'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Name',
                filled: true,
                fillColor: Color.fromARGB(34, 231, 229, 229),
                border: InputBorder.none,
              ),
              style: TextStyle(
                height: 0.5,
              ),
            ),
            textStyles(data: 'Email Address'),
            const TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(34, 231, 229, 229),
                  border: InputBorder.none,
                  hintText: 'Enter Your Email Address'),
            ),
            textStyles(data: 'User Name'),
            const TextField(
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(34, 231, 229, 229),
                  filled: true,
                  border: InputBorder.none,
                  hintText: 'Your UserName'),
            ),
            textStyles(data: 'Password'),
            const TextField(
              decoration: InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                  fillColor: Color.fromARGB(34, 231, 229, 229),
                  hintText: 'Password'),
              obscureText: true,
            ),
            textStyles(data: 'Phone number'),
            const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color.fromARGB(34, 231, 229, 229),
                  hintText: 'Phone number'),
            ),
          ]),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
