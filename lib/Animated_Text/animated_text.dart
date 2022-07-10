
import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
  
}

class _AnimatedTextState extends State<AnimatedText> {
  
var mysize= 10.0; 
Color mycolor = Colors.green;
bool x=true; 
  @override
  Widget build(BuildContext context) {

    
            
    return Scaffold( 
      
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          

        Center(
          child: AnimatedDefaultTextStyle( child:  const Text("Data"), style: TextStyle(
            color: mycolor,
            fontSize: mysize,
          ), duration: const Duration(seconds: 1)),
        ),
        TextButton(onPressed: (){
        setState(() {
          mycolor = Colors.amber;
             mysize=30;
        });
        }, child: const Text("Tap"))

      ]),
    );
  }
}