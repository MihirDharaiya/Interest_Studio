import 'package:flutter/material.dart';
class InterestField extends StatelessWidget {
  final interestFieldUrl, interestName;
  InterestField({this.interestFieldUrl, this.interestName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          height: 240,
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
                  height: 220,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 410,
                height: 220,
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



class TrendingInterestColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          InterestField(
            interestName: 'JAVA',
            interestFieldUrl: 'https://images.unsplash.com/photo-1489875347897-49f64b51c1f8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80' ,
          ),


          InterestField(
            interestName: 'VALORANT',
            interestFieldUrl: 'https://images.unsplash.com/photo-1538481199705-c710c4e965fc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2032&q=80'  ,
          ),


          InterestField(
            interestName: 'HIPHOP',
            interestFieldUrl: 'https://images.unsplash.com/photo-1575672913784-11a7cd4f25f4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80' ,
          ),




          InterestField(
            interestName: 'CRICKET',
            interestFieldUrl:  'https://images.unsplash.com/photo-1593766787879-e8c78e09cbbe?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),




        ],
      ),
    );
  }
}
