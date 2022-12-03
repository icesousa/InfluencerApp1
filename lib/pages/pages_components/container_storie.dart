import 'package:flutter/material.dart';

class Containerstorie extends StatelessWidget {
  final List<String> assetlocals;
  final int index;
  

  
  

  const Containerstorie({super.key,  required this.index, required this.assetlocals});

  @override
  Widget build(BuildContext context) {

    return Container( margin: const EdgeInsets.only(right: 10),
      child:  CircleAvatar(
        radius: 40,
        backgroundColor: const Color(0xff322323),
        child: CircleAvatar(
          radius: 39.5,
          backgroundImage: AssetImage(assetlocals[index]),
        ),
      ),
    );
  }
}
