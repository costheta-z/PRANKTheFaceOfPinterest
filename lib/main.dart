//BT19CSE053- Nandini Kapoor (PINTEREST Web application)
//Video link: https://drive.google.com/file/d/169w9E3_HleLMD5xOyScRpC5aV_o67-JE/view?usp=sharing
//Webapp link: https://itdeath-1579081189185.web.app

import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";
import 'dart:math';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

var himym = [
  "SuIJ4IXngZojO9wk2F",
  "lOmxas40IS3cL8BKvL",
  "l49JFxeMocd9UvqF2",
  "l1J3F47tzXOa64BTq",
  "IwmSFQZyOwbba",
  "OiuBqkkQwHyKI",
  "W6cw2bXjgS9maA451g",
  "E3R1raza50Mec",
  "KcR0ARKnejhCw",
  "U2Rn6jwIBvtlu"
];

var modfam = [
  "3o7TKJD1181K4iT1xm",
  "104Xb5bq1YgiHK",
  "Q5B4LOKUkmE9y",
  "KmtxC1FXu31fO",
  "qQJ1xyQXVuVfW",
  "bqX0ig921AkQE"
];

var ray = [
  "3o7TKO8dRiQW4VbyCc",
  "3o7TKJUKngeq1d4s6c",
  "3o7TKNYvZplsXlsFMI",
  "MylROR2WqVgpq"
];

var office = [
  "IwAZ6dvvvaTtdI8SD5",
  "dUHdTk3tvry9NETa67",
  "hjvinhl1pUrb1gdzlV",
  "d10dMmzqCYqQ0",
  "l0amJzVHIAfl7jMDos",
  "FcCLjCQ3xY7ICVtfbB",
  "wqbAfFwjU8laXMWZ09",
  "ynRrAHj5SWAu8RA002",
  "5wWf7GW1AzV6pF3MaVW",
  "cAxOGVNVPEkjDcpVQk",
  "l0MYt5jPR6QX5pnqM"
];
int x = ray.length + office.length + modfam.length + himym.length, y = 0;

var finlist = ray + office + modfam + himym;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pinterest',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _chosenValue = "Options";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Container(
          width: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 0,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Container(
              width: 30,
              child: HoverWidget(
                  // child:
                  //     Image.asset('asset/icon3.png', width: 30, height: 30),
                  child: Image.network(
                    "https://cdn3.iconfinder.com/data/icons/social-media-black-white-2/512/BW_Pinterest_glyph_svg-512.png",
                    height: 60,
                    width: 60,
                  ),
                  hoverChild: IconButton(
                    hoverColor: Colors.grey[850],
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(1),
                    icon: const Icon(
                      Icons.photo_camera_rounded,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  onHover: (event) {})),
          // Container(
          //     child: IconButton(
          //   icon: Image.asset('asset/logo.jpg'),
          //   //iconSize: 50,
          //   onPressed: () {},
          // )),

          Container(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Container(
            padding: EdgeInsets.all(10.5),
            width: MediaQuery.of(context).size.width * 0.08,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: HoverButton(
              child: Text(
                'Home',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              color: Colors.black,
              hoverColor: Colors.red[600].withOpacity(0.9),
              onpressed: () {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.5),
            width: MediaQuery.of(context).size.width * 0.08,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: HoverButton(
              // splashColor: Colors.red,
              child: Text(
                'Today',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              color: Colors.white,
              hoverColor: Colors.grey[700],
              onpressed: () {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            alignment: Alignment.centerLeft,
            //width: pow(MediaQuery.of(context).size.width, 0.82),
            width: 0.6 * MediaQuery.of(context).size.width - 150,
            height: 35,
            child: TextField(
              style: TextStyle(
                height: 0,
              ),
              autocorrect: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                hintText: 'Search',
                prefixIcon: Container(
                  width: 5,
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                ),
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                ),
                hintStyle: TextStyle(color: Colors.grey[600]),
                filled: true,
                fillColor: Colors.grey[100],
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide(color: Colors.white, width: 6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide:
                      BorderSide(color: Colors.lightBlue[300], width: 3),
                ),
              ),
            ),
          ),
          Container(
            width: 2,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.045,
            child: IconButton(
              hoverColor: Colors.grey[850],
              padding: const EdgeInsets.all(10),
              icon: const Icon(
                Icons.message,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.045,
            child: IconButton(
              hoverColor: Colors.grey[850],
              padding: const EdgeInsets.all(10),
              icon: const Icon(
                Icons.add_alert_rounded,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.045,
            child: HoverWidget(
              hoverChild: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border(),
                ),
                width: MediaQuery.of(context).size.width * 0.045,
                child: IconButton(
                  hoverColor: Colors.grey[850],
                  padding: const EdgeInsets.all(10),
                  icon: const Icon(
                    Icons.account_circle,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              onHover: (event) {},
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border(),
                ),
                width: MediaQuery.of(context).size.width * 0.045,
                child: IconButton(
                  hoverColor: Colors.grey[850],
                  padding: const EdgeInsets.all(10),
                  icon: const Icon(
                    Icons.account_circle,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),

          Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              width: 150,
              child: HoverButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                onpressed: () {},
                hoverColor: Colors.grey.withOpacity(0.2),
                child: Container(
                  width: 130,
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: DropdownButton<String>(
                    value: _chosenValue,
                    //elevation: 5,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),

                    items: <String>[
                      'Options',
                      'Add Account',
                      'Settings',
                      'Log Out',
                      'Sign In',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    },
                  ),
                ),
              ))
        ],
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        children: List.generate(100, (int i) {
          if (i == 0) y = 0;
          if (i > 5) y++;

          return _Tile(i, y);
        }),
        staggeredTiles: List.generate(100, (int index) {
          return StaggeredTile.fit(1);
        }),
      ),
    );
  }
}

// ignore: must_be_immutable
class _Tile extends StatelessWidget {
  //final _key = GlobalKey<ScaffoldState>();
  _Tile(this.i, this.j);
  int i, j;
  @override
  Widget build(BuildContext context) {
    String str = 'https://media.giphy.com/media/559gUG7UAs1o2peLzU/giphy.gif';
    if (i < 5 || i > x - 5)
      str = "https://source.unsplash.com/collection/$i";
    else
      str = "https://media.giphy.com/media/" + finlist[j] + "/giphy.gif";

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        margin: EdgeInsets.all(3),
        child: HoverWidget(
          child: new Stack(
            children: <Widget>[
              Container(
                child: Text("..."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(str),
              ),
            ],
          ),
          onHover: (event) {
            // ignore: deprecated_member_use
            // Scaffold.of(context).showSnackBar(SnackBar(
            //   content: Text(''),
            // ));
          },
          hoverChild: new Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(str,
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    colorBlendMode: BlendMode.modulate),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(4, 0, 2, 0),
                  child: new Row(children: <Widget>[
                    Container(
                      width: 50,
                      child: HoverButton(
                        //minWidth: 50,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        color: Colors.red,
                        hoverColor: Colors.red[900],
                        child: Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onpressed: () {},
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      focusColor: Colors.white,
                      color: Colors.white,
                      padding: const EdgeInsets.all(1),
                      hoverColor: Colors.grey,
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 20,
                      focusColor: Colors.white,
                      color: Colors.white,
                      padding: const EdgeInsets.all(1),
                      hoverColor: Colors.grey,
                      icon: const Icon(
                        Icons.upload_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 20,
                      focusColor: Colors.white,
                      color: Colors.white,
                      padding: const EdgeInsets.all(1),
                      hoverColor: Colors.grey,
                      icon: const Icon(
                        Icons.call_made_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ])),
            ],
          ),
        ));
  }
}
