import 'package:interest_studio/models/InterestModel.dart';
List<InterestModel> getInterest() {
  List<InterestModel> interest = new List<InterestModel>();
  InterestModel interestModel = new InterestModel();




  interestModel.interestName = 'JAVA';
  interestModel.interestUrl =
  'https://images.unsplash.com/photo-1489875347897-49f64b51c1f8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80' ;
  interest.add(interestModel);
  interestModel = new InterestModel();

  interestModel.interestName = 'VALORANT';
  interestModel.interestUrl =
  'https://images.unsplash.com/photo-1538481199705-c710c4e965fc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2032&q=80' ;
  interest.add(interestModel);
  interestModel = new InterestModel();


  interestModel.interestName = 'HIPHOP';
  interestModel.interestUrl =
  'https://images.unsplash.com/photo-1575672913784-11a7cd4f25f4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80' ;
  interest.add(interestModel);
  interestModel = new InterestModel();


  interestModel.interestName = 'CRICKET';
  interestModel.interestUrl =
  'https://images.unsplash.com/photo-1593766787879-e8c78e09cbbe?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80' ;
  interest.add(interestModel);
  interestModel = new InterestModel();




  return interest;
}
