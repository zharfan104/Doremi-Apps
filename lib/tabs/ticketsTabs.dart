import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:izievent/settings/HexColor.dart';

class TicketTabsPage extends StatefulWidget {
  TicketTabsPage({Key key}) : super(key: key);

  _TicketTabsPageState createState() => _TicketTabsPageState();
}

class _TicketTabsPageState extends State<TicketTabsPage> {

  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width ;
    double height = MediaQuery.of(context).size.height;


    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: height/2,
            decoration: new BoxDecoration(
              color: HexColor("C52127"),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(width/1.5))
            ),
          ),
          ListView(
            padding: EdgeInsets.only(left: 10, right: 10),
            children: <Widget>[
              SizedBox(height: 20,),
              Container(
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('My', style: TextStyle(
                    fontSize: 39,
                    fontFamily: "BwNistaGeometricDEMO", 
                    fontWeight: FontWeight.w900,
                    color: HexColor("ffffff")
                  ),),
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Tickets', style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.bold,
                    color: HexColor("ffffff")
                  ),),
                ),
              ),
              SizedBox(height: 30,),
              Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 1,
                            child: Container(
                                padding: EdgeInsets.all(0),
                                width: MediaQuery.of(context).size.width - 20,
                                height: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(width: 1.0, color: Colors.red.withOpacity(0.6) 
                                        )
                                      )),
                                      height: 140,
                                      width: (MediaQuery.of(context).size.width/3) - 20,
                                      padding: EdgeInsets.only(right: 5),
                                      child : Image.asset("assets/images/photo1.png",fit : BoxFit.cover ,) 
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            height: 50,
                                            width: ((MediaQuery.of(context).size.width/3)*2) - 100,
                                            child : Text('New York Party Week', style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800,
                                                color: HexColor("252525"),
                                              ),
                                              //softWrap: true,
                                              overflow: TextOverflow.clip,
                                            )
                                          ),
                                          Container(
                                            height: 25,
                                            width: ((MediaQuery.of(context).size.width/3)*2) - 100,
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
                                          Container(
                                            height: 25,
                                            width: ((MediaQuery.of(context).size.width/3)*2) - 100,
                                            child : Text("4:00pm, Tuesday", style: TextStyle(
                                              fontSize: 14,
                                              color: HexColor("252525")
                                            ))
                                          ),
                                          Container(
                                            height: 30,
                                            width: ((MediaQuery.of(context).size.width/3)*2) - 100,
                                            child : Text('by Knokdown...')
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                          Icon(FontAwesomeIcons.heartbeat, color: HexColor("C52127") ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            elevation: 3,
                                            child: Container(
                                              height: 35,                                              
                                              child: Image.asset("assets/images/qrcode.png"),
                                            )
                                          )
                                          
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 1,
                            child: Container(
                                padding: EdgeInsets.all(0),
                                width: MediaQuery.of(context).size.width,
                                height: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(width: 1.0, color: Colors.red.withOpacity(0.6) 
                                          )
                                      )),
                                      height: 140,
                                      width: (MediaQuery.of(context).size.width/3)-20,
                                      padding: EdgeInsets.only(right: 5),
                                      child : Image.asset("assets/images/photo2.png",fit : BoxFit.cover ,) 
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            height: 50,
                                            width: ((MediaQuery.of(context).size.width/3)*2) - 100,
                                            child : Text('New York Party Week', style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800,
                                                color: HexColor("252525"),
                                              ),
                                              //softWrap: true,
                                              overflow: TextOverflow.clip,
                                            )
                                          ),
                                          Container(
                                            height: 25,
                                            width: ((MediaQuery.of(context).size.width/3)*2) - 100,
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
                                          Container(
                                            height: 25,
                                            width: ((MediaQuery.of(context).size.width/3)*2) - 100,
                                            child : Text("4:00pm, Tuesday", style: TextStyle(
                                              fontSize: 14,
                                              color: HexColor("252525")
                                            ))
                                          ),
                                          Container(
                                            height: 30,
                                            width: ((MediaQuery.of(context).size.width/3)*2) - 100,
                                            child : Text('by Knokdown...')
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                          Icon(FontAwesomeIcons.heartbeat, color: HexColor("C52127") ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            elevation: 3,
                                            child: Container(
                                              height: 35,                                              
                                              child: Image.asset("assets/images/qrcode.png"),
                                            )
                                          )
                                          
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                          )
                        ]
                      )
                    )
                  ]
              )
              
            ]
          )
        ],
      ),
    );
  }
  
}