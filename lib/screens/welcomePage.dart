import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/components/SizeConfig.dart';
import 'package:interest_studio/constants.dart';
import 'package:interest_studio/screens/SignupPage.dart';
import 'package:interest_studio/screens/loginPage.dart';
import '../components/rounded_button.dart';
import 'package:flutter/widgets.dart';



class WelcomePage extends StatefulWidget {
  static const String id = 'welcome_page';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}
class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                  child: WelcomeScreenContent(
                    image: 'images/interest studio final.png',
                    text: 'Welcome to Interest Studio',
                  )
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20.0)),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: kPrimaryColor,
                        onPressed: (){
                          Navigator.pushNamed(context, LoginPage.id);
                        }, child: Text('LOGIN',
                        style: TextStyle(fontSize: getProportionateScreenWidth(18.0),
                            color: Colors.white
                        ),
                      ),
                      ),
                  ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(56),
                        child: OutlineButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: getProportionateScreenWidth(4.0)
                          ),
                          onPressed:(){
                            Navigator.pushNamed(context, SignupPage.id);
                          }, child: Text('REGISTER',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getProportionateScreenWidth(18.0)
                        ),),),
                      ),
                    ),
                  ]
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );

  }
}

class WelcomeScreenContent extends StatelessWidget {
  const WelcomeScreenContent({this.text,this.image});
  final String text,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('INTEREST STUDIO',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(22),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold
          ),),
        ),
        Text(text),
        Image.asset(image,
        height: getProportionateScreenWidth(255),
        width: getProportionateScreenHeight(275),),
      ],
    );
  }
}
