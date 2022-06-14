import 'package:flutter/material.dart';

textWidget(data,{fontsize=30}){
  return Text(
    data    
  );
}

containerWidget(colour,height, width, data){
  return Container(
    child: textWidget(data),
      color:colour,
      height: height,
      width:width,
    );
}