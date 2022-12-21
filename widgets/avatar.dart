import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool isStatusIndicator;
  final bool imageBorder;
  final double avatarSize;

  Avatar({
    required this.displayImage,
    required this.isStatusIndicator,
    this.imageBorder = false,
    this.avatarSize = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          //padding: EdgeInsets.all(5),
          //color: Colors.red,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: imageBorder
                ? Border.all(color: Colors.blue, width: 2)
                : Border(),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 3, left: 3, top: 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                fit: BoxFit.cover,
                displayImage,
                width: avatarSize,
                height: avatarSize,
              ),
            ),
          ),
        ),
        //statusIndicator(),
        isStatusIndicator // == true
            ? Positioned(
                right: 3,
                bottom: 3,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      )),
                ),
              )
            : SizedBox(),
      ],
    );
  }

  // Widget statusIndicator(){
  //   if(IsStatusIndicator==true){
  //     return Positioned(
  //           right: 2,
  //           bottom: 2,
  //           child: Container(
  //             width: 12,
  //             height: 12,
  //             decoration: BoxDecoration(
  //                 color: Colors.greenAccent,
  //                 shape: BoxShape.circle,
  //                 border: Border.all(
  //                   width: 1.5,
  //                   color: Colors.white,
  //                 )),
  //           ),
  //           );
  //   }else{
  //     return Positioned(child: SizedBox());
  //   }
  // }
}
