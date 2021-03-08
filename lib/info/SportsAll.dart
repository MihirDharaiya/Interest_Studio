import 'package:flutter/material.dart';
import 'package:interest_studio/components/ReusableContainer.dart';
class SportsAll extends StatefulWidget {
  static const String id= 'Sports_all';
  @override
  _SportsAllState createState() => _SportsAllState();
}

class _SportsAllState extends State<SportsAll> {
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
                'SPORTS',
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
                title: 'CRICKET',
                image: 'https://images.unsplash.com/photo-1611424286271-876b84c07f30?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGNyaWNrZXR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                title: 'FOOTBALL',
                image: 'https://images.unsplash.com/photo-1553778263-73a83bab9b0c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vdGJhbGx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),

              ReusableContainer(
                title: 'BASKETBALL',
                image: 'https://images.unsplash.com/photo-1546519638-68e109498ffc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmFza2V0YmFsbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              ReusableContainer(
                title: 'HOCKEY',
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfciZgh3DyoQDcYjZL3iKvOf1CWqq8rfSO6w&usqp=CAU',
              ),
              ReusableContainer(
                title: 'VOLLEY BALL',
                image: 'https://images.unsplash.com/photo-1593787406536-3676a152d9cb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dm9sbGV5YmFsbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),



            ],
          ),
        ),
      ),
    );
  }
}


