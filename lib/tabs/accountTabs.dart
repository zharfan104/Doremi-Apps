import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:izievent/settings/HexColor.dart';

class AccountTabsPage extends StatefulWidget {
  AccountTabsPage({Key key}) : super(key: key);

  _AccountTabsPageState createState() => _AccountTabsPageState();
}

class _AccountTabsPageState extends State<AccountTabsPage> {

  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width - 10;
    double height = MediaQuery.of(context).size.height;


    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              ListTile(
                title: Text('Account', style: TextStyle(
                    color: HexColor("C52127"), fontSize: 18, fontWeight: FontWeight.bold
                  )
                )
              ),
              ListTile(
                title: Text('Push notification', style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                  )
                )
              ),
              ListTile(
                title: Text('Profile Setting', style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                  )
                )
              )
            ],
          ),

          Column(
            children: <Widget>[
              ListTile(
                title: Text('About', style: TextStyle(
                    color: HexColor("C52127"), fontSize: 18, fontWeight: FontWeight.bold
                  )
                )
              ),
              ListTile(
                title: Text('Rate Us', style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                  )
                )
              ),
              ListTile(
                title: Text('FAQ', style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                  )
                )
              ),
              ListTile(
                title: Text('izievent', style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                  )
                )
              )
            ],
          ),

          Column(
            children: <Widget>[
              
              Container(
                width: MediaQuery.of(context).size.width - 50,
                padding: EdgeInsets.all(25),
                child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(34),
                        ),
                        onPressed: () async {
                            Navigator.of(context).pushNamedAndRemoveUntil('/intro', (Route<dynamic> route) => false);
                        },
                        padding: EdgeInsets.all(15),
                        color: HexColor("C52127"),
                        child: Text('Logout', style: TextStyle(color: Colors.white)),
                      )
              )

            ],
          )
    
        ],
      )
    );
  }
  
}