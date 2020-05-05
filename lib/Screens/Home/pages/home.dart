import 'package:flutter/material.dart';
class ButtonIcon extends StatelessWidget {
  const ButtonIcon(
      {@required int selectedIndex,
        @required this.iconData,
        @required this.index,
        @required this.onTap})
      : _selectedIndex = selectedIndex;

  final int _selectedIndex;
  final IconData iconData;
  final int index;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: (_selectedIndex == index)
                    ? Colors.black
                    : Color(0xff191A1d),
                blurRadius: 10.0, // has the effect of softening the shadow
                spreadRadius: 5.0, // has the effect of extending the shadow
                offset: Offset(
                  7.0, // horizontal, move right 10
                  7.0, // vertical, move down 10
                ),
              )
            ],
          ),
          child: Container(
            height: 55,
            width: 55,
            color: Color(0xff191A1d),
            child: Center(
              child: (_selectedIndex == index)
                  ? RadiantGradientMask(
                  child: Icon(
                    iconData,
                    size: 40,
                  ))
                  : Icon(iconData, size: 40, color: Color(0xffBDBDBD)),
            ),
          )),
    );
  }
}

class Company{
  int id;
  String name;

  Company(this.id, this.name);

  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'Apple'),
      Company(2, 'Google'),
      Company(3, 'Samsung'),
      Company(4, 'Sony'),
      Company(5, 'LG'),
    ];
  }
}

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xffFF61DC),
          Color(0xffFF6161),
        ],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
List<String> rImgs=[
  "https://media-cdn.tripadvisor.com/media/photo-s/10/00/09/a8/swimming-pool.jpg",
  "https://pix10.agoda.net/hotelImages/4862270/0/1c6b57e935f7f6aa015d9478f8c5f252.jpg?s=1024x768"
];
List<String> rTxt=[
  "Lux Hotel with a Pool",
  "Sunset Hitek"
];
List<String> rplace=[
  "Dubai",
  "Venice"
];
class home extends StatefulWidget {

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropdownMenuItems;
  Company _selectedCompany;

  List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Company>> items = List();
    for (Company company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }
  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    onChangeDropdownItem(Company selectedCompany) {
      setState(() {
        _selectedCompany = selectedCompany;
      });
    }
    return Stack(children: <Widget>[
      Image.network(
        'https://s3-alpha-sig.figma.com/img/8fdb/a983/253012396d0f2a40625039979721752b?Expires=1589155200&Signature=C1j-n0mXfKAPl4XaAgf7VLFhHu2F2qPP1CuzLc-Rl-NmOrFb1mXrV2tpjhkqrSw8G~u4XLi~2a-WWP4JqsHE3dGb91L4smoI1XsJsGh4K6LdLqHfdRtkwmc970nNpyUNdGGirkvh5pSz-oMRl0EySZZm4AX~XLQcuYukvd3N62wQLlCyIdchYtU3qcpRXKWrTITxdNnkF5tmApNr7YdmltjuKBs2dp4I3TY9gaNg2etMwlj36RgoOQMDI3-pF1s1IJU4aHriCFGUCCpnxzA7FN7ETB95rUM1RO3WfFFbAkOA8waCdnSpxwBzjTydlii~N-WiOp88otcVMhgMN2PzXA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      ),
      Container(
        color: Color(0x99000000),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 130),
        child: Text(
          'Find place that gives you ultimate calm',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
      Positioned(
        bottom: -10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Color(0xff191A1D),
          ),
          height: (MediaQuery
              .of(context)
              .size
              .height / 1.6),
          width: (MediaQuery
              .of(context)
              .size
              .width),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 42, left: 18, right: 18),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Place',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    new BorderRadius.circular(25.0),
                                    borderSide: new BorderSide(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
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
                                ],
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff191A1D)),
                            child: DropdownButton(
                              focusColor: Colors.white,
                              value: _selectedCompany,
                              items: _dropdownMenuItems,
                              onChanged: onChangeDropdownItem,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(

//                                  boxShadow: [
//                                    BoxShadow(
//                                      color: Color(0xff0A0A0A),
//                                      blurRadius: 10.0,
//                                      spreadRadius: -10,
//
//                                      offset:  Offset(
//                                        5.0, // horizontal, move right 10
//                                        5.0, // vertical, move down 10
//                                      ),
//                                    ),
//                                    BoxShadow(
//                                      color: Color(0xff242529),
//                                      blurRadius: 10.0,
//
//                                      offset:  Offset(
//                                        -5.0, // horizontal, move right 10
//                                        -5.0, // vertical, move down 10
//                                      ),
//                                    ),
//                                  ],
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff191A1D),
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    new BorderRadius.circular(25.0),
                                    borderSide: new BorderSide(),
                                  ),
                                  labelText: 'Place',

                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
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
                                    // has the effect of extending the shadow
                                    offset: Offset(
                                      -5.0, // horizontal, move right 10
                                      -5.0, // vertical, move down 10
                                    ),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff191A1D)),
                            child: DropdownButton(
                              focusColor: Colors.white,
                              value: _selectedCompany,
                              items: _dropdownMenuItems,
                              onChanged: onChangeDropdownItem,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Container(
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.grey,
                  height: (MediaQuery
                      .of(context)
                      .size
                      .height / 3),
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
                              color: Colors.black),
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
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
