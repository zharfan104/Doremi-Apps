import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:izievent/settings/HexColor.dart';


class DetailsEvent extends StatefulWidget {
  static final String path = "lib/src/pages/hotel/details.dart";

  @override
  _DetailsEventState createState() => _DetailsEventState();
}

class _DetailsEventState extends State<DetailsEvent> {

  double h;
  double w;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width - 10;
    double height = MediaQuery.of(context).size.height;

    w = width;
    h = height;

    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          Container(
            foregroundDecoration: BoxDecoration(
              color: Colors.black26
            ),
            height: 400,
            child: Image.asset("assets/images/photo0.png", fit: BoxFit.cover)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 280),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 16.0),
                    Spacer(),
                    RaisedButton(
                      color: HexColor("FFF2F2"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                      ),
                      onPressed: (){},
                      child: Icon(Icons.share),
                    ),
                    RaisedButton(
                      color: HexColor("FFF2F2"),
                      onPressed: (){},
                      child: Icon(Icons.favorite_border),
                    ),
                  ],
                ),
                Container(
                  //padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color:  HexColor("FFF2F2"),
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width/2 - 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child : Align(
                                      alignment: Alignment.centerLeft,
                                      child : Icon(FontAwesomeIcons.mapMarkerAlt, color: HexColor("C52127"), size: 15,)
                                    )
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Marina Bay ST, New York, USA', style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2 - 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child : Align(
                                      alignment: Alignment.centerLeft,
                                      child : Icon(FontAwesomeIcons.calendarAlt, color: HexColor("C52127"), size: 15,)
                                    )
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('15 September 2019 8:00 onwards', style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),                      
                      Container(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child : Text("About".toUpperCase(), style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0
                          )
                        )
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child : Text(
                          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?", textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          )
                        )
                      ),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                          child: FlatButton(
                            onPressed: (){},
                            child: Text('See more', style: TextStyle(fontSize: 17, color : Colors.blue,),
                          ),
                        )
                      ),
                      Divider(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15.0), 
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                            elevation: 10,
                            child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child : Text("Organizer".toUpperCase(), style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0
                          )
                        )
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 300,
                        padding: const EdgeInsets.all(15), 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width : MediaQuery.of(context).size.width/3,
                              child: Align( 
                                alignment: Alignment.topLeft,
                                child :Image.asset("assets/images/logo.png")
                              )
                            ),
                            Container(                              
                              width: (MediaQuery.of(context).size.width/3)*1.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text("Prospect Park Alliance".toUpperCase(), style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0
                                    )
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?", textAlign: TextAlign.justify, style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.0
                                    )
                                  ),
                                   Container(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child : FlatButton(
                                          onPressed: (){},
                                          child: Text('Organizer Details', style: TextStyle(fontSize: 15, color : Colors.blue,),
                                        )
                                      ),
                                    )
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Similar Events".toUpperCase(), style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            )),
                            Container(
                              padding: const EdgeInsets.all(15.0),
                                child: FlatButton(
                                  onPressed: (){},
                                  child: Text('View more', style: TextStyle(fontSize: 17, color : Colors.blue,),
                                ),
                              )
                            ),
                          ],
                        )
                      ),
                      SizedBox(height: 15,),
                      Column(
                        children: _getEvents(),
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 20,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: IconButton(
                    onPressed: () =>  _scaffoldKey.currentState.openDrawer(),
                    icon: Icon(Icons.menu, size: 30, color: Colors.white,),
                  )
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("Search")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    title: Text("Favorites")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), title: Text("Settings")),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  List<Widget> _getEvents() { 
    List listings = new List<Widget>();
    List items = ['photo1.png', 'photo2.png', 'photo0.png'];
    
    int i = 0;
    for (i = 0; i < 3; i++) {
      listings.add(
        Container(
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsEvent()
                      )
                  );
                },
                child : Card(
                  elevation: 1,
                  child: Container(
                      padding: EdgeInsets.all(0),
                      width: w,
                      height: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: w/3,
                            height: 120,
                            child : Image.asset("assets/images/${items[i]}",fit : BoxFit.cover, width: MediaQuery.of(context).size.width/3 ,)
                          ),
                          Container(
                            width: ((w/3)*2) - 80,
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  child : Text('New York Party Week', 
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: HexColor("252525")
                                    )
                                  )
                                ),
                                Container(
                                  height: 30,
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
                                  height: 20,
                                  child : Align(
                                    alignment: Alignment.centerLeft,
                                    child : Text("4:00pm, Tuesday", 
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("252525")
                                      )
                                    )
                                  )
                                ),
                                Container(
                                  height: 20,
                                  child : Align(
                                    alignment: Alignment.centerLeft,
                                    child : Text('by Knokdown...')
                                  )
                                )
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
              )
            ],
          )
        )
      );
    }
    return listings;
  }

}
