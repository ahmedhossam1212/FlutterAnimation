import 'package:animation/Transition/animationrout.dart';
import 'package:animation/Transition/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pagetwo extends StatelessWidget {
  const Pagetwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 202, 78, 29), 
       child: TextButton(onPressed: () {
         Navigator.of(context).push(slidRight(page: const PageOne()));
       },
       child: Text("PageOne",style: Theme.of(context).textTheme.bodyLarge,),
       ),
    );
  
  }
}