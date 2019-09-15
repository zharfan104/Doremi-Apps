  
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:izievent/settings/HexColor.dart';
import 'package:izievent/view/home.dart';
import 'package:izievent/view/login.dart';

const kImageDemo =
    "https://cdn4.iconfinder.com/data/icons/onboarding-material-color/128/__14-512.png";


class IntroPage extends StatelessWidget {
  const IntroPage({Key key}) : super(key: key);

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  Widget _buildImage(String a) {
    return Align(
      child: Image.asset(
        'assets/images/$a.png',
      ),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            dotsDecorator: DotsDecorator(
              // shape: ShapeBo
            ),
            imageFlex: 1,
            bodyFlex: 1,
            titleTextStyle: TextStyle(            
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
            bodyTextStyle: TextStyle(
              color: Colors.grey
            ),
            pageColor: HexColor("C52127")
          ),
          title: "Discover Events That Interests You",
          bodyWidget : Container(
            color: HexColor("C52127"),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 16
                      )
                    ),
          ),
          image: Container(
            color: HexColor("FFF2F2"),
            child : _buildImage('city'),
          )
        ),
        PageViewModel(
          decoration: PageDecoration(
            imageFlex: 1,
            bodyFlex: 1,
            titleTextStyle: TextStyle(            
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
            bodyTextStyle: TextStyle(
              color: Colors.grey
            ),
            pageColor: HexColor("C52127")
          ),
          title: "Discover Events That Interests You",
          bodyWidget : Container(
            color: HexColor("C52127"),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 
                      style: TextStyle(
                        color:Colors.white60,
                        fontSize: 16
                      )
                    ),
          ),
          image: Container(
            color: HexColor("FFF2F2"),
            child : _buildImage('people'),
          )
        ),       
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Passer', style: TextStyle(color: Colors.white),),
      next: const Icon(FontAwesomeIcons.arrowCircleRight, color: Colors.white, size: 50,),
      done: const Icon(FontAwesomeIcons.arrowCircleRight, color: Colors.white, size: 50,)
    );
  }
}
