import 'package:flutter/material.dart';

import '../Home.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff191A1D),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff191A1D),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius:
                      10.0,
                      // has the effect of softening the shadow
                      offset: Offset(
                        7.0, // horizontal, move right 10
                        7.0, // vertical, move down 10
                      ),
                    ),
                    BoxShadow(
                      color: Color(0xff292A2F),
                      blurRadius:
                      10.0,
                      // has the effect of softening the shadow
                      offset: Offset(
                        -5.0, // horizontal, move right 10
                        -5.0, // vertical, move down 10
                      ),
                    ),
                  ],),
              width: (MediaQuery
                  .of(context)
                  .size
                  .width),
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 11),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    ClipOval(
                      child: Image.network("https://s3-alpha-sig.figma.com/img/8276/2f91/3e1cb4e289d55633cda9a6a64e98cf71?Expires=1589760000&Signature=K5Ic~0DaqQKwcV7VAuu3OT~2xQeNku-XlQ6nWwmup1fumfXC3SE4ZVC4dNQE434Qp0L616ldsjpATvLaoysHhlQfiOcEWKzjgZlSh540ZGl4~seztJ82-UcHNvDmWAZREb3GnPh62Z2-kvMbU4vUZhrrR2uQd1cIo0m66k8bCZ8NsVnQaZQhOdrgv9RfEPtap8tJ7grxNabzH4oUspbgoWu9XoJJOe6m4lslnK-YFo~Mu0mTp7zTnUO6nMfyDgu~ohXv7N6QsazTYw7Huw8a9zTgaBZaf0-wrf0uG9KRMyb-RaKqzREkI9-S~Ok0VRrK2UPiyaCwUzBpl-W2BDmATQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text("Jane Doe",style: TextStyle(
                      fontSize: 22
                    ),),
                  ],
                ),
              ),
            ),
            Tile(iconData: Icons.favorite,
              txt: "Your Favourites",
            ),
            Tile(
              iconData: Icons.credit_card,
              txt: "Payments",
            ),
            Tile(iconData: Icons.help,
              txt: "Help",
            ),
            Tile(iconData: Icons.settings,
              txt: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
 final IconData iconData;
 final String txt;
 Tile({this.iconData,this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 29,horizontal: 25),
      child: Row(
        children: <Widget>[
          RadiantGradientMask(
            child: Icon(iconData,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(txt,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey
            ),
          ),
        ],
      ),
    );
  }
}
