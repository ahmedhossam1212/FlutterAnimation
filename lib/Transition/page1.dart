
import 'package:animation/Transition/animationrout.dart';
import 'package:animation/Transition/page2.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return Container(
      color: Color.fromARGB(255, 67, 122, 71), 
       child: TextButton(onPressed: () {
         Navigator.of(context).push(slidRight(page: const Pagetwo()));
       },
       child: Text("PageTwo",style: Theme.of(context).textTheme.bodyLarge,),
       ),
    );
    
  }
}