import 'package:flutter/material.dart';
import 'package:intro_views_flutter/UI/page.dart';
import 'package:izievent/settings/HexColor.dart';
import 'package:izievent/view/home.dart';
import 'package:izievent/view/newpassword.dart';
import 'package:izievent/view/register.dart';
import 'package:izievent/view/resetpassword.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey();
  final _user = Map();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: HexColor("C52127")
        ),
        backgroundColor: HexColor("FFF2F2"),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: <Widget>[
          SizedBox(height: 20,),
          Container(            
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text('Login', style: TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.bold,
                color: HexColor("C52127")
              ),),
            ),
          ),
          SizedBox(height: 5),
          Container(       
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text("Lets Get Started to see what's events are happening around the World!", style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: HexColor("676767")
              ),),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
                builder: (context) => Form(

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Email or Phone'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your first name';
                              }
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            obscureText: true,
                              decoration:
                                  InputDecoration(labelText: 'Password', hintText: "Enter email address or phone number"),
                              validator: (value){
                                if (value.isEmpty) {
                                  return 'Enter email address or phone number';
                                }
                              }
                          ),                          
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 50, right: 50),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(34),
                              ),
                              onPressed: () async {
                                
                                Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
                              },
                              padding: EdgeInsets.all(15),
                              color: HexColor("C52127"),
                              child: Text('Get Started', style: TextStyle(color: Colors.white)),
                            ),
                          ), Container(
                            margin: EdgeInsets.all(15),
                            child: Center(child: FlatButton(child: Text('Reset Password', style: TextStyle(color: HexColor("676767"), fontSize: 12),), onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ResetPasswordPage()
                                  )
                              );
                            },)),
                          ),
                          Center(
                            child: Text('or'),
                          ),
                          SizedBox(height: 15,),
                          RaisedButton(
                            color: HexColor("5574D8"),
                            padding: EdgeInsets.all(5),
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.asset("assets/images/fbk.png"),
                                Text('connect with Facebook', style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            padding: EdgeInsets.all(5),
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.asset("assets/images/google_logo.png"),
                                Text('connect with Google')
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Center(
                            child : FlatButton(
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage()
                                    )
                                );
                              },
                              child: Text('Sign Up', style: TextStyle(color: HexColor("C52127"), fontSize: 16, fontWeight: FontWeight.bold),),
                            )
                          )
                        ]
                    )
                  )
             )
          )
        ],
      )
    );
  }

 

}