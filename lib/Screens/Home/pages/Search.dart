import 'package:flutter/material.dart';
import 'package:travelappui/Screens/Home/pages/home.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x99000000),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 73,left: 19,right: 19,bottom: 30),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  icon: Icon(
                    Icons.search,
                  ),
                  hintText: 'Enter city name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xff393939),
              height: (MediaQuery
                  .of(context)
                  .size
                  .height / 2.5),
              width: (MediaQuery
                  .of(context)
                  .size
                  .width),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      "Recommended",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, i) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 4.0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                      image: new NetworkImage(
                                          rImgs[i]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height: 185,
                                  width: 265,

                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey,
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black,
                                          Colors.transparent
                                        ]),
                                  ),
                                  height: 185,
                                  width: 265,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .end,
                                      children: <Widget>[
                                        Text(rTxt[i], style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              rplace[i], style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700
                                            ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Spacer(),
                                            Text("700  "),
                                            Text("4.5"),
                                            Icon(Icons.star)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            )
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "Deals",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 200.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, i) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.0, vertical: 4.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: new NetworkImage(
                                        dImgs[i]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                height: 185,
                                width: 265,

                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.black,
                                        Colors.transparent
                                      ]),
                                ),
                                height: 185,
                                width: 265,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    mainAxisAlignment: MainAxisAlignment
                                        .end,
                                    children: <Widget>[
                                      Text(dTxt[i], style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            dplace[i], style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700
                                          ),
                                            textAlign: TextAlign.start,
                                          ),
                                          Spacer(),
                                          Text("500  "),
                                          Text("4.0"),
                                          Icon(Icons.star)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          )
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
List<String> dImgs=[
  "https://pix10.agoda.net/hotelImages/5500801/-1/768121748a8dcc2964128df844fb9072.jpg?s=1024x768",
  "https://q-cf.bstatic.com/images/hotel/max1024x768/227/227030896.jpg"
];
List<String> dTxt=[
  "Habtoor Palace Dubai",
  "Lesante Classic"
];
List<String> dplace=[
  "Dubai",
  "Greece"
];