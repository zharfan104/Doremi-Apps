import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:izievent/settings/HexColor.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:line_icons/line_icons.dart';


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
                padding: EdgeInsets.only(left: 10, right: 10),
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
                padding: EdgeInsets.only(left: 10, right: 10),
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
                                          Icon(LineIcons.heart_o, color: HexColor("C52127") ),
                                          GestureDetector(
                                            onTap: ()=> openPopup(),
                                            child:Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              elevation: 3,
                                              child: Container(
                                                height: 35,                                              
                                                child: Image.asset("assets/images/qrcode.png"),
                                              )
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
                                          Icon(LineIcons.heart_o, color: HexColor("C52127") ),
                                          GestureDetector(
                                            onTap: ()=> openPopup(),
                                            child:Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              elevation: 3,
                                              child: Container(
                                                height: 35,                                              
                                                child: Image.asset("assets/images/qrcode.png"),
                                              )
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

  openPopup(){
    
    EasyDialog(
      closeButton: false,
      cornerRadius: 10.0,
      fogOpacity: 0.1,
      width: 280,
      height: 475,
      // title: Text(
      //   "Custom Easy Dialog Title",
      //   style: TextStyle(fontWeight: FontWeight.bold),
      //   textScaleFactor: 1.2,
      // ),
      descriptionPadding:
          EdgeInsets.all(0),
      // description: Text(
      //   "This is a custom dialog. Easy Dialog helps you easily create basic or custom dialogs.",
      //   textScaleFactor: 1.1,
      //   textAlign: TextAlign.center,
      // ),
      // topImage: NetworkImage(
      //     "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
      contentPadding:
          EdgeInsets.only(top: 1.0), // Needed for the button design
      contentList: [
        Container(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/qr.png", height: 100,),
              SizedBox(height: 20,),
              Text('QR Code : 987654323')
            ],
          )
        ),
        
        Divider(height: 10, thickness: 2,),
        SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.all(5),
          height: 80,
          width: 260,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 250/2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child : Align(
                        alignment: Alignment.centerLeft,
                        child : Icon(FontAwesomeIcons.mapMarkerAlt, color: HexColor("C52127"), size: 12,)
                      )
                    ),
                    SizedBox(height: 5,),
                    Container(
                      width: 260/2,
                      child: Text('Marina Bay ST, New York, USA', style : TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Container(
                width: 250/2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child : Align(
                        alignment: Alignment.centerLeft,
                        child : Icon(FontAwesomeIcons.calendarAlt, color: HexColor("C52127"), size: 12,)
                      )
                    ),
                    SizedBox(height: 5,),
                    Container(
                      width: 260/2 - 10,
                      child: Text('15 September 2019 8:00 onwards', style : TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(height: 6, thickness: 2,),
        Container(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child : Align(
              alignment: Alignment.centerLeft,
              child : Text("About".toUpperCase(), style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0
              )
            )
          )
        ),
        Container(
          padding: const EdgeInsets.all(5),
          child : Text(
            "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt", textAlign: TextAlign.justify, style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12.0
            )
          )
        ),
        Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child : FlatButton(
                onPressed: (){},
                child: Text('See more', style: TextStyle(fontSize: 12, color : Colors.blue,),
              ),
              )
          )
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child : Align(
              alignment: Alignment.centerLeft,
              child :Text("Organizer".toUpperCase(), style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0
              )
            )
          )
        ),
        Container(
          height: 42,
          padding: const EdgeInsets.all(5), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width : (260/4) - 10,
                child: Align( 
                  alignment: Alignment.topLeft,
                  child :Image.asset("assets/images/logo.png")
                )
              ),
              Container(                              
                width: (260/4)*2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Propos Park allinace", textAlign: TextAlign.justify, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        
        Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 280/2,
                child : FlatButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pop();},
                  child: Text("\$45",
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Colors.white
                    ),
                  )
                )
              ),
              Container(
                width: 280/2,
                child : FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop();},
                  child: Text("Buy Ticket",
                    textScaleFactor: 1.3,
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Colors.white
                    ),
                  )
                )
              )
            ],
          ),
        ),
        
      ]).show(context);
      
  }
  
}