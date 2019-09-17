import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:izievent/partials/drawer.dart';
import 'package:izievent/settings/HexColor.dart';
import 'package:izievent/tabs/accountTabs.dart';
import 'package:izievent/tabs/giftTabs.dart';
import 'package:izievent/tabs/homeTabs.dart';
import 'package:izievent/tabs/seachTabs.dart';
import 'package:izievent/tabs/ticketsTabs.dart';
import 'package:line_icons/line_icons.dart';


class HomePage extends StatefulWidget {
  final int index; 
  HomePage({Key key, this.index}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
  final List<Map> collections = [
    {
      "title":"Food joint",
      "image":"assets/images/city.png"
    },
    {
      "title":"Photos",
      "image":"assets/images/logo.png"
    },
    {
      "title":"Travel",
      "image":"assets/images/city.png"
    },
    {
      "title":"Nepal",
      "image":"assets/images/people.png"
    },
  ];

  @override
  Widget build(BuildContext context) {

    
    

    return DefaultTabController(
      initialIndex: ( widget.index != null ) ? widget.index : 0,
        length: 5,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            leading: Icon(null),
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 0),
                child: IconButton(
                  onPressed: () =>  _scaffoldKey.currentState.openDrawer(),
                  icon: Icon(Icons.menu, size: 30, color: Colors.white,),
                )
              )
            ],
            backgroundColor: HexColor("C52127")
          ),
          drawer: DrawerCustom(),
          //endDrawer: DrawerCustom(),
          drawerScrimColor: HexColor("C52127").withOpacity(0.3),
          drawerEdgeDragWidth: 100,
          body: TabBarView(
            children: [
              HomeTabsPage(),
              SeachTabsPage(),
              TicketTabsPage(),
              GiftTabsPage(),
              AccountTabsPage(),
            ],
          ),
          bottomNavigationBar: new TabBar(
            indicator: BoxDecoration(
              color: HexColor("FFF2F2")
            ),
            tabs: [
              Tab(
                icon: new Icon(LineIcons.home),
              ),
              Tab(
                icon: new Icon(LineIcons.search, size: 30,),
              ),
              Tab(
                icon: Icon(LineIcons.ticket, size: 30,),
              ),
              Tab(icon: new Icon(LineIcons.gift, size: 30,)),
              Tab(icon: new Icon(LineIcons.user, size: 30,))
            ],
            labelColor: HexColor("C52127"),
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
        ),
  
    );
  }

  Widget listEvent(){
    return Container(
      padding: EdgeInsets.all(10),
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
    );
  }

  Widget sliderCollection(){
    return Container(
          color: Colors.white,
          height: 200.0,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: collections.length,
            itemBuilder: (BuildContext context, int index){
              return new Swiper(
                itemBuilder: (BuildContext context,int index){
                  return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
                },
                itemCount: 3,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
              );
            }
          )
        );
  }
  
}