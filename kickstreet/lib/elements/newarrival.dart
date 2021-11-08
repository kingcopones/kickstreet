import 'package:flutter/material.dart';
import 'package:kickstreet/utils/constants.dart';
import 'package:kickstreet/elements/tworoundedsidebutton.dart';

class NewArrivalList extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const NewArrivalList({
    Key key,
    this.image,
    this.title,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 40),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 200,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 33,
                          color: shadowColor,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    image,
                    width: 180.0,
                  ),
                  Positioned(
                    top: 20,
                    right: 10,
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 160,
                    child: Container(
                      height: 90,
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'Futura'),
                              children: [
                                TextSpan(
                                  text: "$title\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                    text: price,
                                    style: TextStyle(fontSize: 17.0)),
                              ],
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 101,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                alignment: Alignment.center,
                                child: Text("Details"),
                              ),
                              Expanded(
                                child: TwoRoundedSideButton(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
