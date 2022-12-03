import 'package:flutter/material.dart';

class GridviewModel extends StatelessWidget {
  const GridviewModel({super.key,  required this.crossAxisCount, required this.generates, required this.scrollDirection, required this.itemBuilder, });
  final Axis scrollDirection;
  final int crossAxisCount;
  final int generates;
  final Widget Function(BuildContext, int) itemBuilder;  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
                      scrollDirection: scrollDirection,
                      shrinkWrap: true,
                      itemCount: generates,
                      itemBuilder: itemBuilder,
                      
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount) ,
    
                      
                        
                        
    
                    );
  }
}