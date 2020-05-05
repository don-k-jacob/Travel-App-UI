import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.network(
        'https://www.rd.com/wp-content/uploads/2017/08/02-World%E2%80%99s-Most-Outrageous-Luxury-Hotels-and-Resorts-via-mardanpalace.com_-760x506.jpg',
        height: (MediaQuery
            .of(context)
            .size
            .height / 2),
        width: (MediaQuery
            .of(context)
            .size
            .width),
        fit: BoxFit.fitHeight,
      ),
      Container(
        color: Color(0x99000000),
        width: (MediaQuery
            .of(context)
            .size
            .width),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 67,left: 42,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Special Deals",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  Text("Nov 12 - 24",style: TextStyle(
                    fontSize: 20
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 40),
              child: Container(
                child: Center(
                    child: Text(
                      'Search a room',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    )),
                height: 70,
                width: 338,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius:
                        10.0, // has the effect of softening the shadow
                        offset: Offset(
                          7.0, // horizontal, move right 10
                          7.0, // vertical, move down 10
                        ),
                      ),
                      BoxShadow(
                        color: Color(0xff292A2F),
                        blurRadius:
                        10.0, // has the effect of softening the shadow
                        offset: Offset(
                          -5.0, // horizontal, move right 10
                          -5.0, // vertical, move down 10
                        ),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffFF61DC),
                          Color(0xffFF6161),
                        ])),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: -10,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff191A1D),
          ),
          height: (MediaQuery
              .of(context)
              .size
              .height / 1.7),
          width: (MediaQuery
              .of(context)
              .size
              .width),
          child: Column(
            children: <Widget>[
                 ListTile(),
              Divider(
                thickness: 3,
              ),
              ListTile(),
              Divider(
                thickness: 3,
              ),
              ListTile(),
              Divider(
                thickness: 3,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class ListTile extends StatelessWidget {
  const ListTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     children: <Widget>[
       Padding(
         padding: const EdgeInsets.only(top: 30,left: 28,bottom: 29),

         child: Text("Please rate your stay at Venice\n Royal, Venice, Italy.",
         style: TextStyle(
           fontSize: 18
         ),
         ),
       ),
       Spacer(),
       IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){

       })
     ],

              );
  }
}
