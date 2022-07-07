import 'package:flutter/material.dart';

class TransformOne extends StatefulWidget {
  const TransformOne({Key? key}) : super(key: key);

  @override
  State<TransformOne> createState() => _TransformOneState();
}

class _TransformOneState extends State<TransformOne> {
  double valrot = 0.0;

  @override
  Widget build(BuildContext context) {
     
     return Scaffold(
appBar: AppBar(
  title: const Text("Transform"),
),

body: Column( mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  Transform.rotate(
    child:     
       Center(
         child: Container(
      
         color: Colors.redAccent,
      
          height: 90,
      
          width: 50,
      
      ),
       ),
      angle: valrot,
      
    
  ),

Slider(value: valrot, onChanged: (val){
  setState(() {
    valrot = val; 
  });

},
min: 0.0,
 max: 2*3.14,
),
Text("${valrot}"),

  ]) ,

     );
  }
}