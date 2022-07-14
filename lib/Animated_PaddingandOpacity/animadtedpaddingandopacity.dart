import 'package:flutter/material.dart';


class AnimatedPaddingandOPacity extends StatefulWidget {
  const AnimatedPaddingandOPacity({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingandOPacity> createState() => _AnimatedPaddingandOPacityState();
}

class _AnimatedPaddingandOPacityState extends State<AnimatedPaddingandOPacity> {
 

 var db = 10.0;
 double op =0.9;

  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            AnimatedPadding( 
              duration: const Duration(seconds: 2) ,
              padding: EdgeInsets.all(db) ,
              curve:Curves.linear ,
              child: Container( width: 100.0,
              height: 100.0,
                color: Colors.blue,
                
              ),
            )
            ,
            TextButton(onPressed: (){
              setState(() {
                db = 30.0;
                op =0.0;

              });
            },
             child: const Text("Tap",style: TextStyle(
              backgroundColor:Colors.black,
              fontSize: 30.0,
           ), 
              ),
                ),
                AnimatedOpacity( 
                  duration: const Duration(seconds: 2) ,
                  opacity: op,
                
                  child: Container( width: 100.0,
                              height: 100.0,
                  color: Colors.black,
                  
                              ),
                ),
          ],
        ),
      ) ,
    );
  }
}