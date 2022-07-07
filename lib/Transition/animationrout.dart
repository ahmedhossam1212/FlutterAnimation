

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class slidRight extends PageRouteBuilder {
  final page;
slidRight({this.page}):super (pageBuilder:(context,animation,animationtwo)=>page , 
transitionsBuilder:(context,animation,animationtwo,child){

return FadeTransition(opacity: animation,child:child,);


} );

 

}