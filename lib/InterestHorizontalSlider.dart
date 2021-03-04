
import 'package:flutter/material.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/CsgoInfo.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/Valorant.dart';


class InterestField extends StatelessWidget {
  const InterestField ({
    Key key, this.image, this.title, this.press,
  }) : super(key: key);
  final String image,title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20.0,top: 10.0,bottom: 50.0),
      width: 160.0,
      height: 150.0,

      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Colors.black.withOpacity(0.23)
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n',
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: 'Click Here',
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
                        )
                      ]
                  ),),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}




