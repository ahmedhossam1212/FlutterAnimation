import 'package:flutter/material.dart';

class AnimationContainer extends StatefulWidget {
  const AnimationContainer({Key? key}) : super(key: key);

  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {
  double myhight = 100.0;
   double mywidth = 100.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(seconds:1 ),
              color: Colors.blue,
              curve:Curves.linear,
              height: myhight,
              width: mywidth, 

            ),
            
          ),
          TextButton(onPressed: (){
            setState(() { 

            myhight=300.0;
            mywidth=300.0;
             
         
              
            });
               
          }, child:const Text("Tap"))
        ],
      ),
    );
    
  }
}