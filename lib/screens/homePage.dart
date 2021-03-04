import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:interest_studio/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/InterestHeading.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/DanceSection.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/EsportsSection.dart';
import 'package:interest_studio/InterestHorizontalSlider.dart';
import 'package:interest_studio/constants.dart';
import 'package:interest_studio/moreButton/DanceMore.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/ProgrammingSection.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/RecipesSection.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/sections/SportsSection.dart';
import 'file:///E:/android/androidProjects/interest_studio/lib/info/Valorant.dart';
import 'package:interest_studio/moreButton/EsportsMore.dart';
import 'package:interest_studio/moreButton/ProgrammingMore.dart';
import 'package:interest_studio/moreButton/RecipesMore.dart';
import 'package:interest_studio/moreButton/SportsMore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth ;
import 'package:interest_studio/models/CategoryModel.dart';
import 'package:interest_studio/models/InterestModel.dart';
import 'package:interest_studio/helper/Data.dart';
import 'package:interest_studio/helper/BodyData.dart';
auth.User loggedInUser;

// class HomePage extends StatefulWidget {
//   static const String id = 'home_page';
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final _auth = FirebaseAuth.instance;
//   void initState() {
//     super.initState();
//     getCurrentUser();
//   }
//   void getCurrentUser(){
//     try{
//       final user =  _auth.currentUser;
//       if(user !=null){
//         loggedInUser = user;
//
//       }
//     }
//     catch(e){
//       print(e);
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         // automaticallyImplyLeading: false,
//         title:
//            Text('INTEREST STUDIO'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(child: Text('Your Profile',
//               style: TextStyle(
//                 color: Colors.red,
//                 fontSize: 24.0
//               ),
//             ),
//             ),
//             ListTile(
//               leading: Icon(Icons.message),
//               title: Text('Messages'),
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('Profile'),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.tealAccent[50],
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Profile',
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: Container(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 Row(
//                   children: [InterestHeading(
//                     interestName: 'ESPORTS',
//                   ),
//                   RoundedButton(
//                     colour: Colors.green,
//                     title: 'More',
//                     onPressed: (){
//                       Navigator.pushNamed(context, EsportsMore.id);},),],
//                 ),
//                 EsportSection(),
//                 Row(
//                   children: [InterestHeading(
//                     interestName: 'PROGRAMMING',
//                   ),
//                     RoundedButton(
//
//                       colour: Colors.green,
//                       title: 'More',
//                       onPressed: (){
//                         Navigator.pushNamed(context, ProgrammingMore.id);},),],
//                 ),
//                 ProgrammingSection(),
//                 Row(
//                   children: [InterestHeading(
//                     interestName: 'RECIPES',
//                   ),
//                     RoundedButton(
//                       colour: Colors.green,
//                       title: 'More',
//                       onPressed: (){
//                         Navigator.pushNamed(context, RecipesMore.id);},),],
//                 ),
//                 RecipesSection(),
//                 Row(
//                   children: [InterestHeading(
//                     interestName: 'DANCE',
//                   ),
//                     RoundedButton(
//                       colour: Colors.green,
//                       title: 'More',
//                       onPressed: (){
//                         Navigator.pushNamed(context, DanceMore.id);},),],
//                 ),
//                 DanceSection(),
//                 Row(
//                   children: [InterestHeading(
//                     interestName: 'SPORTS',
//                   ),
//                     RoundedButton(
//                       colour: Colors.green,
//                       title: 'More',
//                       onPressed: (){
//                         Navigator.pushNamed(context, SportsMore.id);},),],
//                 ),
//                 SportsSection(),
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




// //TODO: BACK TO 1 POSITION AFTER SCROLLING UP.
// //TODO: IMAGES CHANGES
class Home_Page extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final _auth = FirebaseAuth.instance;
  void initState() {
    super.initState();
    getCurrentUser();
    categories= getCategories();
    interests= getInterest();
  }
  void getCurrentUser(){
    try{
      final user =  _auth.currentUser;
      if(user !=null){
        loggedInUser = user;

      }
    }
    catch(e){
      print(e);
    }
  }
  List<CategoryModel> categories = new List<CategoryModel>();
  List<InterestModel> interests = new List<InterestModel>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading:false,
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
              children: [
                Text('Interest',
                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                Text('Studio',
                style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 20.0,),
                Row(children: [
                  Text('Various',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  Text('Interest',style: TextStyle(color: kPrimaryColor,fontSize: 18,fontWeight: FontWeight.w600),)
                ],),
                SizedBox(height: 20.0,),
                Container(
                  height: 130,
                  child: ListView.builder(
                      itemCount: categories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return InterestCard(
                          imageUrl: categories[index].imageUrl,
                          categoryName: categories[index].categoryName,
                        );
                      }),
                ),

                SizedBox(height: 20.0,),
                /// body;
                Row(children: [
                  Text('Trending',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  Text('Interest',style: TextStyle(color: kPrimaryColor,fontSize: 18,fontWeight: FontWeight.w600),)
                ],),
                SizedBox(height: 20.0,),
                Container(
                  // height: 400,
                  width: 500,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                      itemCount: interests.length,
                      shrinkWrap: true,
                      // scrollDirection: Axis.vertical,
                      itemBuilder: (context,index){
                        return InterestField(
                          interestFieldUrl: interests[index].interestUrl,
                          interestName: interests[index].interestName,
                        );
                      }),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



class InterestCard extends StatelessWidget {
  final imageUrl,categoryName,press;

  InterestCard({this.categoryName,this.imageUrl,this.press});
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

              child: Image.network(imageUrl,
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

              child: Text(categoryName,
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


class InterestField extends StatelessWidget {
  final interestFieldUrl,interestName;
  InterestField({this.interestFieldUrl,this.interestName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){},
        child: Container(
          height: 250,
          width: 500,
          margin: EdgeInsets.only(right: 10,left: 10,),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),

                child: Image.network(interestFieldUrl,
                  width: 410,fit: BoxFit.cover,
                  height: 230,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 410,height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black26,

                ),

                child: Text(interestName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,

                  ),),
              ),
              Container(
                alignment: Alignment.bottomRight,

                child: FlatButton(
                  color: Colors.white,

                  onPressed: (){

                  },
                  child: Text('FOLLOW',
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),),

                ),
              ),
            ],
          ),
        )
    );
  }
}





