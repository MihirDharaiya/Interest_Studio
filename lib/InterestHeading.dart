import 'package:flutter/material.dart';

class InterestHeading extends StatelessWidget {

  InterestHeading({ this.interestName});
  final String interestName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            interestName,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        // Expanded(
        //   child: Container(
        //     margin: EdgeInsets.only(right: 20.0),
        //     child:Align(
        //       alignment: Alignment.centerRight,
        //       child: FlatButton(
        //           minWidth: 90.0,
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(20.0)
        //           ),
        //           color: Colors.green,
        //           onPressed: (){},
        //           child: Text(
        //             'More',
        //             style: TextStyle(
        //               color: Colors.black,
        //               fontSize: 15.0,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           )
        //       ),
        //     ),
        //   ),
        // ),

      ],
    );
  }
}

