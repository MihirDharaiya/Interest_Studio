import 'package:flutter/material.dart';
import 'TrendingInterest.dart';
import 'package:interest_studio/components/ReusableContainer.dart';
class EsportsAll extends StatefulWidget {
  static const String  id ='Esports_all';
  @override
  _EsportsAllState createState() => _EsportsAllState();
}

class _EsportsAllState extends State<EsportsAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ESPORTS',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              // Text(
              //   'Studio',
              //   style: TextStyle(
              //       color: kPrimaryColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 20),
              // ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ReusableContainer(
                title: 'VALORANT',
                image: 'https://images.unsplash.com/photo-1538481199705-c710c4e965fc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2032&q=80',
              ),

              ReusableContainer(
                title: 'CSGO',
                image: 'https://images.unsplash.com/photo-1599399056366-e318f572dbba?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y291bnRlciUyMHN0cmlrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                title: 'PUBG',
                image: 'https://images.unsplash.com/photo-1564049489314-60d154ff107d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1061&q=80',
              ),
              ReusableContainer(
                title: 'GTA',
                image: 'https://images.unsplash.com/photo-1599604079629-bb0dfe72f847?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Z3RhNXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              ReusableContainer(
                title: 'CALL OF DUTY',
                image: 'https://images.unsplash.com/photo-1604911073747-08778101b76d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Y2FsbCUyMG9mJTIwZHV0eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),



            ],
          ),
        ),
      ),
    );
  }
}


