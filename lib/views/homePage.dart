
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fly/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/avatar.png",
                    fit: BoxFit.cover,
                  ),
                  Image.asset("assets/images/menu.png", fit: BoxFit.cover),
                  Image.asset("assets/images/upload.png", fit: BoxFit.cover),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SemiBold(name: "Collections", size: 30),
              Container(
 
  decoration: const BoxDecoration(
    border: Border(
              bottom: BorderSide(width: 2.0, color: Color(0xffBEBEBE)),)
  ),
  child: Padding(
    padding: const EdgeInsets.fromLTRB(0,0,0,5),
    child: Medium(name: "Favorites", size: 15, color: const Color(0xffBEBEBE)),
  ),
)
            ],),
          ),
            const Expanded(child: View()),
          ],
        ));
  }
}
