import 'package:interest_studio/InterestHorizontalSlider.dart';
import 'package:interest_studio/components/MainDrawer.dart';
import 'package:interest_studio/models/InterestModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:interest_studio/constants.dart';
import 'package:flutter/material.dart';
import 'package:interest_studio/info/TrendingInterest.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
auth.User loggedInUser;


class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final  _auth = auth.FirebaseAuth.instance;
  // List<CategoryModel> categories = new List<CategoryModel>();
  List<InterestModel> interests = new List<InterestModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }
  void getCurrentUser(){
try{
final user =_auth.currentUser;
if(user != null){
loggedInUser =user;
}
}
catch(e){
  print(e);
}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MainDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INTEREST',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'STUDIO',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
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
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      'VARIOUS',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),

                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'INTEREST',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  // height: 10.0,
                ),
                Container(
                  height: 130,
                  child: InterestRow(),
                ),

                SizedBox(
                  height: 12.0,
                ),

                /// body;
                Row(
                  children: [
                    Text(
                      'TRENDING',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'INTEREST',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  // height: 400,
                  width: 500,
                  child: TrendingInterestColumn(

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class InterestField extends StatelessWidget {
  final interestFieldUrl, interestName;
  InterestField({this.interestFieldUrl, this.interestName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          height: 250,
          width: 500,
          margin: EdgeInsets.only(
            right: 10,
            left: 10,
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  interestFieldUrl,
                  width: 410,
                  fit: BoxFit.cover,
                  height: 230,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 410,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black26,
                ),
                child: Text(
                  interestName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0, right: 12.0),
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    minWidth: 90.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      'FOLLOW',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
