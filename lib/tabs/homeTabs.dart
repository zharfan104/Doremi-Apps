import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intro_views_flutter/UI/page_indicator_buttons.dart';
import 'package:intro_views_flutter/UI/pager_indicator.dart';
import 'package:izievent/settings/HexColor.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:izievent/view/detailsevent.dart';
import 'package:izievent/view/filter.dart';
import 'package:line_icons/line_icons.dart';

class HomeTabsPage extends StatefulWidget {
  HomeTabsPage({Key key}) : super(key: key);

  _HomeTabsPageState createState() => _HomeTabsPageState();
}

class _HomeTabsPageState extends State<HomeTabsPage> {

  double w;
  double h;
  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width - 10;
    double height = MediaQuery.of(context).size.height;

    w = width;
    h = height;

    return Stack(
        children: <Widget>[
          Container(
            height: height/2,
            decoration: new BoxDecoration(
              color: HexColor("C52127"),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(width/1.5))
            ),
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),            
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
                    onPressed: (){
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FilterPage()
                            )
                        );
                    },
                    icon: Icon(FontAwesomeIcons.filter, size: 25, color: Colors.white,),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(50)),
                ),
                height: 250,
                child: new Swiper(
                  onTap: (index){
                    Navigator.push(
                      context,
                        MaterialPageRoute(
                          builder: (context) => DetailsEvent()
                        )
                    );
                  },
                  layout: SwiperLayout.DEFAULT,
                  loop: true,
                  autoplay: true,
                  itemWidth: 255,
                  viewportFraction: 0.8,
                  itemBuilder: (BuildContext context,int index){
                    return Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color : Colors.transparent.withOpacity(0.1),
                              offset: Offset(10, 0),
                              blurRadius: 100
                            )
                          ]
                        ),
                        padding: EdgeInsets.all(0),
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
                                      Container(
                                        child: Row(
                                        children: <Widget>[
                                          Icon(LineIcons.map_marker),
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
                      color: Colors.black87,//HexColor("676767")
                    )),
              ),
              Column(
                children: _getEvents(),
              )
            ]
          )
        ],
    );

    
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
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
                                Icon(LineIcons.heart_o),
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