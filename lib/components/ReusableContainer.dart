import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {

  final String image,title;

  ReusableContainer({this.title,this.image,});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(7),
        height: 190,
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
                image,
                width: 410,
                fit: BoxFit.cover,
                height: 160,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 410,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black26,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              // height: 30,
              margin: EdgeInsets.only(bottom: 18.0, right: 10.0),

              child: FlatButton(
                  minWidth: 60.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.white,
                  onPressed: () {},
                  child: Text(
                    'FOLLOW',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ],
        ),
      ),);
  }
}
