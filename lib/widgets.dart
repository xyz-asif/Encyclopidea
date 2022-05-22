import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fly/views/nextScreem.dart';

List flies = [
  Fly(
    icon: "assets/images/like.png",
    secondimage: "assets/images/first.png",
    title: "Monarch",
    family: "Parnassians",
    id: "first",
    country: "A  F  R  I  C  A",
    name: "Monarch",
    img: "assets/images/first.png",
    disc: " These butterflies are found all over the world, but there aren't many species within this family due to their rare survival instincts",
  ),
  Container(
    width: 100,
    height: 150,
    color: Colors.white,
  ),
  Fly(
    icon: "assets/images/like.png",
    secondimage: "assets/images/second.png",
    title: "Satyridae",
    family: "arctics",
    id: "second",
    country: "A  M  E  R  I  C  A",
    name: "Satyridae",
    img: "assets/images/second.png",
    disc:" There are 50 species in this family and are found in North America preferring meadows, open forests and grassy fields.",
  ),
  Fly(
    icon: "assets/images/fill.png",
    secondimage: "assets/images/third.png",
    title: "Danaidae",
    family: "plexipus",
    id: "third",
    country: "A  T  L  A  N  T  A",
    name: "Danaidae",
    img: "assets/images/third.png",
    disc: "  Milkweed butterflies are the most common of this type of butterfly and is found in what's termed the Old and New World tropics.",
  ),
  Fly(
    icon: "assets/images/like.png",
    secondimage: "assets/images/fourth.png",
    title: "Helinae",
    family: "meliconians ",
    id: "fourth",
    country: "E  U  R  O  P  E",
    name: "Helinae",
    img: "assets/images/fourth.png",
    disc: " These small to medium butterflies are part of the Superfamily Hesperioidea and populate the world.These are said to be rare and beautiful ",
  ),
  Fly(
    icon: "assets/images/like.png",
    secondimage: "assets/images/fifth.png",
    title: "Megamidae",
    family: "hesperiidae",
    id: "fifth",
    country: "A  U  S  T  R  I  A",
    name: "Monarch",
    img: "assets/images/fifth.png",
    disc: " This North American family of skipper butterflies is known for being strong-flying. They are typically considered a subfamily of Hesperiidae.",
  ),
];

class View extends StatelessWidget {
  const View({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
        itemCount: 6,
        crossAxisCount: 2,
        itemBuilder: (c, index) {
          return flies[index];
        },
        staggeredTileBuilder: (i) => const StaggeredTile.fit(1));
  }
}

// ignore: must_be_immutable
class MainText extends StatelessWidget {
  // const MainText({ Key? key , }) : super(key: key);
  String name;
  double size;

  MainText({Key? key, required this.name, required this.size})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontFamily: "main", fontSize: size, color: Colors.black),
    );
  }
}

// todo only one
// ignore: must_be_immutable
class SemiBold extends StatelessWidget {
  // const MainText({ Key? key , }) : super(key: key);
  String name;
  double size;
  Color? color;
  SemiBold({Key? key, required this.name, required this.size, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontFamily: "second", fontSize: size, color: color ?? Colors.black),
    );
  }
}
class Medium extends StatelessWidget {
  // const MainText({ Key? key , }) : super(key: key);
  String name;
  double size;
  Color color;
  Medium(
      {Key? key, required this.name, required this.size, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      name, textAlign: TextAlign.center,
      style: TextStyle(fontFamily: "first", fontSize: size, color: color),
    );
  }
}
// ignore: must_be_immutable
class Regular extends StatelessWidget {
  // const MainText({ Key? key , }) : super(key: key);
  String name;
  double size;
  Color color;
  Regular(
      {Key? key, required this.name, required this.size, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontFamily: "first", fontSize: size, color: color),
    );
  }
}

// todo card widgets

// ignore: must_be_immutable
class Fly extends StatelessWidget {
  Fly(
      {Key? key,
      required this.icon,
      required this.secondimage,
      required this.title,
      required this.family,
      required this.id,
      required this.img,
      required this.name,
      required this.disc,
      required this.country  
      })
      : super(key: key);
  final icon;
  // ignore: prefer_typing_uninitialized_variables
  final secondimage;
  String title, family, id;
  var country;
  var disc;
  var img;
  var name;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return GestureDetector(
     onTap: (){
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Next(country: country,disc: disc,img: img ,name: name,num: id,)),
  );
     },
      child: Container(
        height: h / 2.5,
        width: w / 2.1,
        child: Stack(
          children: [
            Positioned(
                top: 24,
                right: 24,
                child: Image.asset(
                  icon,
                  fit: BoxFit.cover,
                )),
            Positioned(
                bottom: 28,
                left: 17,
                child: Medium(name: title, size: 20, color: Colors.black)),
            Positioned(
                bottom: 16,
                left: 17,
                child: Regular(
                  name: family,
                  size: 10,
                  color: const Color(0xffBEBEBE),
                )),
            Sit(
              fly: secondimage,
              hyt: 120,
              wid: 120,
              tag: id,
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffF2F3F5),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Sit extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var fly;

  double hyt;
  String tag;
  double wid;

  // ignore: use_key_in_widget_constructors
  Sit(
      {required this.fly,
      required this.hyt,
      required this.wid,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: hyt,
            width: wid,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
          child: Hero(
              tag: tag,
              child: Image.asset(
                fly,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              )),
        )),
      ],
    );
  }
}


class Big extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var fly;

  double hyt;
  String tag;
  double wid;

  // ignore: use_key_in_widget_constructors
  Big(
      {required this.fly,
      required this.hyt,
      required this.wid,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: hyt,
            width: wid,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Hero(
              tag: tag,
              child: Image.asset(
                fly,
                height: 310,
                width: 310,
                fit: BoxFit.cover,
              )),
        )),
      ],
    );
  }
}





class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h / 7,
      width: w / 2.1,
      color: Colors.white,
    );
  }
}

//  todo another screen

// Next(img: "assets/images/third.png", name: "Monarch", disc: " These butterflies are found all over the world, but there aren't many species within this family due to their rare survival instincts", country: "A    F    R    I    C    A"),)