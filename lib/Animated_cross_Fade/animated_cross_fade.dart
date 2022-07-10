import 'package:flutter/material.dart';

class AnimatedFade extends StatefulWidget {
  const AnimatedFade({Key? key}) : super(key: key);

  @override
  State<AnimatedFade> createState() => _AnimatedFadeState();
}

bool x =true; 

class _AnimatedFadeState extends State<AnimatedFade> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: AnimatedCrossFade(
            firstChild: const Icon(Icons.airplanemode_off),
            secondChild:  const Icon(Icons.airplanemode_on),
            duration: const Duration(seconds: 1),
            crossFadeState: x ? CrossFadeState.showFirst : CrossFadeState.showSecond ,
          ),
        ),
      Center(child: TextButton(child: const Text("Tap") ,onPressed: (){
        setState(() {
          
          x=!x;
        });
      },))
      ],
    )
    ,
    );
  }
}