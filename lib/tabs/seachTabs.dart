import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:izievent/settings/HexColor.dart';

class SeachTabsPage extends StatefulWidget {
  SeachTabsPage({Key key}) : super(key: key);

  _SeachTabsPageState createState() => _SeachTabsPageState();
}

class _SeachTabsPageState extends State<SeachTabsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
           Container(
            height: 250.0,
            decoration: BoxDecoration(
              color: HexColor("C52127")
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                      contentPadding: EdgeInsets.only(left: 20, top: 12, right: 12, bottom: 12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Tape here",
                      fillColor: Colors.white.withOpacity(0.4),
                      filled: true,
                      suffixIcon: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.white,
                        child: Icon(Icons.search, color: HexColor("C52127"),size: 30,),
                        onPressed: () {
                          debugPrint('222');
                        })
                    ),
                ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded( 
                      child: Padding( 
                        padding: EdgeInsets.all(5),
                          child : RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          onPressed: () async {
                          },
                          padding: EdgeInsets.all(15),
                          color: Colors.transparent,
                          child: Text('Organizers', style: TextStyle(color: HexColor("ffffff"), fontSize: 14, fontWeight: FontWeight.bold)),
                        )
                      )
                    ),
                    Expanded( 
                      child : Padding( 
                        padding: EdgeInsets.all(5),
                        child : RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          onPressed: () async {
                          },
                          padding: EdgeInsets.all(15),
                          color: HexColor("ffffff"),
                          child: Text('Events', style: TextStyle(color: HexColor("C52127"), fontSize: 14, fontWeight: FontWeight.bold)),
                        )
                      )
                    ),
                    Expanded( 
                      child : Padding(
                        padding: EdgeInsets.all(5),
                        child : Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white
                          ),
                          child : Center( 
                            child : DropdownButton(
                              style: TextStyle(
                                backgroundColor: Colors.white,
                                color: HexColor("C52127")
                              ),
                              iconSize: 30,
                              iconEnabledColor: HexColor("C52127"),
                              value: _currentType,
                              items: _dropDownMenuItems,
                              onChanged: changedDropDownItem,
                            )
                          )
                        )
                      )
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Center(
                  child: Text('11 events found', style: TextStyle(color: Colors.white),),
                ),
                SizedBox(height: 20,),
                Column(
                  children: <Widget>[
                    Container(
                      child: Column(
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
                          ),
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
                          ),
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
                          ),
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
                          ),
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
                          ),
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
                          ),
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
                          ),
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
                          ),
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
                          ),
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
            ],
          )
        ],
      )
    );
  }

  List _type =
  ["Weekend", "Month"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentType;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentType = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String t in _type) {
      items.add(new DropdownMenuItem(
          value: t,
          child: new Text(t)
      ));
    }
    return items;
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentType = selectedCity;
    });
  }

}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width-40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height/2);
    path.quadraticBezierTo(
        size.width, size.height - (size.height / 4), size.width-40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}