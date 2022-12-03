import 'package:flutter/material.dart';

class RaisedGradientbutton extends StatelessWidget {

  
  
  final double width;
  final double height;
  final Function()? onPressed;
  final String buttonText;
  final List<Color> gradientcolors;
  final TextStyle? textStyle;
   

   const RaisedGradientbutton({
    super.key,
    
    
    required this.width, 
    required this.height, 
    required this.onPressed,
    required this.buttonText, required this.gradientcolors, this.textStyle,
  });
  @override
  
  Widget build(BuildContext context) {
      

    return Container(
      
      decoration:  BoxDecoration(
        
        
         borderRadius: BorderRadius.circular(10.0),
        
       gradient:  LinearGradient(
            colors: gradientcolors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight), 
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(buttonText, style:  textStyle),
      ),
    );
  }
}
