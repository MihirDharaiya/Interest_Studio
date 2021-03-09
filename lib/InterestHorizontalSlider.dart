import 'package:flutter/material.dart';
// import 'EsportsAll.dart';
// import 'DanceAll.dart';
// import 'ProgrammingAll.dart';
// import 'RecipesAll.dart';
// import 'SportsAll.dart';

import 'package:interest_studio/info/DanceAll.dart';
import 'package:interest_studio/info/SportsAll.dart';
import 'info/EsportsAll.dart';
import 'info/RecipesAll.dart';
import 'info/ProgrammingAll.dart';

//
//
// class InterestField extends StatelessWidget {
//   const InterestField ({
//     Key key, this.image, this.title, this.press,
//   }) : super(key: key);
//   final String image,title;
//   final Function press;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.only(left: 20.0,top: 10.0,bottom: 50.0),
//       width: 160.0,
//       height: 150.0,
//
//       child: Column(
//         children: [
//           Container(
//
//               child: Image.asset(image,)
//           ),
//           GestureDetector(
//             onTap: press,
//             child: Container(
//               padding: EdgeInsets.all(10.0),
//               decoration: BoxDecoration(
//                 color: Colors.greenAccent,
//                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
//                 boxShadow: [
//                   BoxShadow(
//                       offset: Offset(0,10),
//                       blurRadius: 50,
//                       color: Colors.black.withOpacity(0.23)
//                   )
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   RichText(text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: '$title\n',
//                           style: Theme.of(context).textTheme.button,
//                         ),
//                         TextSpan(
//                           text: 'Click Here',
//                           style: TextStyle(
//                             color: Colors.redAccent,
//                           ),
//                         )
//                       ]
//                   ),),
//                 ],
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
//
//
//
//


class InterestCard extends StatelessWidget {
  final  String image,title;
  final Function press;

  InterestCard({this.title,this.image,this.press});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 100,
        margin: EdgeInsets.only(right: 16.0,top: 10,),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),

              child: Image.network(image,
                width: 140,height: 110, fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 140,height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black26,

              ),

              child: Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),),
            ),
          ],
        ),
      ),
    );

  }
}


class InterestRow extends StatelessWidget {

  // InterestRow({this.imageName1,this.imageName2,this.imageName3,this.imageName4,this.imageName5,this.titleName1,this.titleName2,this.titleName3,this.titleName4,this.titleName5,this.onPress1,this.onPress2,this.onPress3,this.onPress4,this.onPress5,});
  // final String imageName1,imageName2,imageName3,imageName4,imageName5;
  // final String titleName1,titleName2,titleName3,titleName4,titleName5;
  // final Function onPress1,onPress2,onPress3,onPress4,onPress5;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children :[
            InterestCard(
              title: 'ESPORTS',
              image: 'https://images.unsplash.com/flagged/photo-1580234748052-2c23d8b27a71?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1047&q=80',
              press: (){
                Navigator.pushNamed(context,EsportsAll.id);
              },
            ),
            InterestCard(
              title: 'RECIPES',
              image:  'https://images.unsplash.com/photo-1601315379734-425a469078de?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80',
              press: (){
                Navigator.pushNamed(context, RecipesAll.id);

              },
            ),
            InterestCard(
              title: 'DANCE',
              image: 'https://images.unsplash.com/photo-1550026593-f369f98df0af?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
              press: (){
                Navigator.pushNamed(context, DanceAll.id);

              },
            ),
            InterestCard(
              title: 'SPORTS',
              image: 'https://images.unsplash.com/photo-1587280501635-68a0e82cd5ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
              press: (){
                Navigator.pushNamed(context, SportsAll.id);

              },
            ),
            InterestCard(
              title: 'PROGRAMMING',
              image: 'https://images.unsplash.com/photo-1510915228340-29c85a43dcfe?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
              press: (){
                Navigator.pushNamed(context, ProgrammingAll.id);

              },
            ),

            // InterestCard(
            //   title: 'MORE',
            //   image: 'https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.clker.com%2Fclipart-more-button-png.html&psig=AOvVaw0U14OEUXpe0edlYTA48oWD&ust=1614882917983000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNDM5uvhlO8CFQAAAAAdAAAAABAD',
            //   press: (){
            //
            //   },
            // )
          ]
      ),
    );
  }
}




















