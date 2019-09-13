import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:izievent/settings/HexColor.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeTabsPage extends StatefulWidget {
  HomeTabsPage({Key key}) : super(key: key);

  _HomeTabsPageState createState() => _HomeTabsPageState();
}

class _HomeTabsPageState extends State<HomeTabsPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              color: HexColor("C52127")
            ),
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(            
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text('Popular Now', style: TextStyle(
                        fontSize: 39,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    ),
                  ),
                  IconButton(
                    color: Colors.white.withOpacity(1),
                    onPressed: (){},
                    icon: Icon(FontAwesomeIcons.filter, size: 25, color: Colors.white,),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 250,
                child: new Swiper(
                  loop: true,
                  autoplay: true,
                  itemWidth: 255,
                  viewportFraction: 0.8,
                  itemBuilder: (BuildContext context,int index){
                    return Container(
                      child: Column(
                        children: <Widget>[ 
                          Stack(
                            children: <Widget>[
                              new Image.asset("assets/images/photo$index.png",fit: BoxFit.cover, width: 255,),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(FontAwesomeIcons.heart, color: Colors.white,),
                              ),                              
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 255,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(child : Text('New York Party Week', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black))),
                                    Expanded(
                                      child:Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(FontAwesomeIcons.mapMarkerAlt),
                                        Text('New York, USA', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)),
                                      ],
                                    ))
                                  ],
                                ),
                                Divider(
                                  height: 10,
                                  color: Colors.black,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded( child: Text('15', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: HexColor("C52127")))),
                                    Expanded( child :Text('Sep', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
                                  ],
                                )
                              ],
                            )
                          )
                        ],
                      )
                    );
                  },
                  itemCount: 2,
                  pagination: new SwiperPagination(
                    margin: EdgeInsets.only(top: 10)
                  ),
                  // control: new SwiperControl(),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                child: Text('Trending', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: HexColor("676767")
                    )),
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Card(
                          elevation: 1,
                          child: Container(
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width - 10,
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width/4,
                                    child : Image.asset("assets/images/photo2.png",fit : BoxFit.contain, width: MediaQuery.of(context).size.width/4 ,)
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('New York Party Week', style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: HexColor("252525")
                                        )),
                                        Align(
                                          child :Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Align( alignment: Alignment.centerLeft, child : Icon(FontAwesomeIcons.mapMarkerAlt, size: 15,)),
                                              Text('New York, USA', style: TextStyle(
                                                fontSize: 14,
                                                color: HexColor("252525")
                                              )),
                                            ],
                                          )
                                        ),
                                        Text("4:00pm, Tuesday", style: TextStyle(
                                          fontSize: 14,
                                          color: HexColor("252525")
                                        )),
                                        SizedBox(height: 20,),
                                        Text('by Knokdown...')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.6) 
                                      )
                                    )),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Icon(FontAwesomeIcons.heart),
                                        SizedBox(height: 16),
                                        Text('02', style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor("C52127")
                                        )),
                                        Text('Nov', style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor("252525")
                                        )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                      ],
                    )
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Card(
                          elevation: 1,
                          child: Container(
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width - 10,
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width/4,
                                    child : Image.asset("assets/images/photo2.png",fit : BoxFit.contain, width: MediaQuery.of(context).size.width/4 ,)
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('New York Party Week', style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: HexColor("252525")
                                        )),
                                        Align(
                                          child :Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Align( alignment: Alignment.centerLeft, child : Icon(FontAwesomeIcons.mapMarkerAlt, size: 15,)),
                                              Text('New York, USA', style: TextStyle(
                                                fontSize: 14,
                                                color: HexColor("252525")
                                              )),
                                            ],
                                          )
                                        ),
                                        Text("4:00pm, Tuesday", style: TextStyle(
                                          fontSize: 14,
                                          color: HexColor("252525")
                                        )),
                                        SizedBox(height: 20,),
                                        Text('by Knokdown...')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.6) 
                                      )
                                    )),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Icon(FontAwesomeIcons.heart),
                                        SizedBox(height: 16,),
                                        Text('02', style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor("C52127")
                                        )),
                                        Text('Nov', style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor("252525")
                                        )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                      ],
                    )
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Card(
                          elevation: 1,
                          child: Container(
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width - 10,
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width/4,
                                    child : Image.asset("assets/images/photo2.png",fit : BoxFit.contain, width: MediaQuery.of(context).size.width/4 ,)
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('New York Party Week', style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: HexColor("252525")
                                        )),
                                        Align(
                                          child :Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Align( alignment: Alignment.centerLeft, child : Icon(FontAwesomeIcons.mapMarkerAlt, size: 15,)),
                                              Text('New York, USA', style: TextStyle(
                                                fontSize: 14,
                                                color: HexColor("252525")
                                              )),
                                            ],
                                          )
                                        ),
                                        Text("4:00pm, Tuesday", style: TextStyle(
                                          fontSize: 14,
                                          color: HexColor("252525")
                                        )),
                                        SizedBox(height: 20,),
                                        Text('by Knokdown...')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.6) 
                                      )
                                    )),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Icon(FontAwesomeIcons.heart),
                                        SizedBox(height: 16,),
                                        Text('02', style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor("C52127")
                                        )),
                                        Text('Nov', style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor("252525")
                                        )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                      ],
                    )
                  )
                ],
              )
            ]
          )
        ],
      );
  }
}