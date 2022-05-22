// 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets.dart';
import 'homePage.dart';

class Next extends StatelessWidget {
  var country;

  var disc;

  var img;

  var name;

  var num;

  Next(
      {Key? key,
     
      required this.img,
      required this.name,
      required this.disc,
      required this.country,
      required this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
       backgroundColor: const Color(0xffF2F3F5),
      body: Column(
      
        children: [
                   Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
        
                    // todo first row complete
                    GestureDetector(
                      onTap: (){
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Home()),
  );
                      },
                      child: Image.asset(
                        "assets/images/backer.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(child: Medium(name: "Overview", size: 15, color: const Color(0xffA5A5A5))),
                    Image.asset("assets/images/save.png", fit: BoxFit.cover),
        
                    
                  ],
                ),
              ),
         // todo first row complete
      
      SizedBox(height: 150,),
         
              Big(fly: img, hyt: 240, wid: 240, tag: num),



                    SizedBox(height: 5,),
              MainText(name: name, size: 40),
                 SizedBox(height: 9,),
              Padding(
                padding: const EdgeInsets.fromLTRB(30,0,30,0),
                child: Medium(name: disc, size: 12, color:  const Color(0xffA5A5A5)),
              ),
                   
SizedBox(height: 80,),
                     // todo last row complete
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
        
                   
                    Image.asset(
                      "assets/images/location.png",
                      fit: BoxFit.cover,
                    ),
                 
                    Medium(name:country, size: 12, color: Colors.black),
                    Image.asset("assets/images/share.png", fit: BoxFit.cover),
                  
                     // todo last row complete
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
