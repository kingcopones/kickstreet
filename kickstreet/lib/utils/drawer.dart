import 'package:flutter/material.dart';
import 'package:kickstreet/utils/constants.dart';

class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.withAlpha(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage:
                        AssetImage("assets/images/King_Memoji.JPG"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "King Copones",
                    style: TextStyle(
                        fontFamily: 'Futura',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          ListTile(
            onTap: () {
              debugPrint("Tapped Profile");
            },
            leading: Icon(
              Icons.person,
              color: colorAccent,
            ),
            title: Text(
              "Your Profile",
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Favorites");
            },
            leading: Icon(
              Icons.favorite_border,
              color: colorAccent,
            ),
            title: Text("Favorites"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Carts");
            },
            leading: Icon(
              Icons.shopping_cart,
              color: colorAccent,
            ),
            title: Text("Cart"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Notifications");
            },
            leading: Icon(Icons.notifications, color: colorAccent),
            title: Text("Notifications"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped About");
            },
            leading: Icon(Icons.info, color: colorAccent),
            title: Text("About Kickstreet"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Log Out");
            },
            leading: Icon(Icons.exit_to_app, color: colorAccent),
            title: Text("Log Out"),
          ),
        ],
      ),
    );
  }
}
