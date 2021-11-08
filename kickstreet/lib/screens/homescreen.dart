import 'package:flutter/material.dart';
import 'package:kickstreet/elements/newarrival.dart';
import 'package:kickstreet/utils/constants.dart';
import 'package:kickstreet/elements/tworoundedsidebutton.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/images/ks_bg@2x.png"),
        alignment: Alignment.topCenter,
        fit: BoxFit.fitWidth,
        ), 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 90.0, left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("NEW ARRIVAL", style: textStyleBold),
                  Icon(Icons.search, size: 30.0),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  NewArrivalList(
                    image: "assets/images/whitesneaker1.png",
                    title: "Velcro Leather Classic",
                    price: "₱9500",
                  ),
                  NewArrivalList(
                    image: "assets/images/whitesneaker2.png",
                    title: "Ren Heritage Gumsole",
                    price: "₱25000",
                  ),
                  NewArrivalList(
                    image: "assets/images/whitesneaker3.png",
                    title: "Tommy Collection 2020",
                    price: "₱15500",
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("FEATURED THIS MONTH", style: textStyleBold),
                Container(margin: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                height: 205,
               child: Stack(
                children: <Widget>[
                 Positioned(
                   bottom: 0,
                   left: 0,
                   child: Container(
                     padding: EdgeInsets.only(left: 24, top: 24, right: size.width * .45 ),
                      height: 185,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(29),
                      
                      ),
                      child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                         Text("Kicks Street Curation for May 2020", style: TextStyle(fontSize: 10),
                         ), 
                         SizedBox(height: 5),
                         Text("Tampa Leather Trainers est. 1998", style: TextStyle(fontSize: 22),
                         ),
                         SizedBox(height: 15),
                         Text("15% Off", style: TextStyle(fontSize: 17, color: textColorLight),
                         ),
                         SizedBox(height: 5),
                         Text("use code: KSAPRIL20", style: TextStyle(fontSize: 15, color: textColorLight),
                         ),  
                        ],
                     
                      ),
                   ),
                 ),
                   Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset("assets/images/whitesneakerfeatured.png"),
                      width: size.width * .45,
                      ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child:SizedBox(height: 40, width: size.width *.3,
                      child: TwoRoundedSideButton(),
                      ),
                    ),
    
                ],
                 
               ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}

