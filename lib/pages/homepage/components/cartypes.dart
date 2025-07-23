import 'package:flutter/material.dart';
import 'package:hashicars/extensions.dart';

class Cartypes extends StatelessWidget {
  final String illustrationimage;
  final String illustrationname;
  final  VoidCallback onTapped;
  const Cartypes({
    super.key,
    required this.illustrationimage,
    required this.illustrationname,
    required this. onTapped
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth =MediaQuery.of(context).size.width;
    double carTypewidth;
    double carTypeheight;
    
    if (screenWidth >=900){
      carTypewidth=screenWidth/3.5;
      carTypeheight= carTypewidth;
    }else if(screenWidth>=600){
      carTypewidth=screenWidth/3.5;
      carTypeheight= carTypewidth;
    }else{
      carTypewidth=screenWidth/ 1.5;
      carTypeheight=carTypewidth;
    }
    return SizedBox(
      width: carTypewidth,
      height: carTypeheight,
      child: InkWell(
        onTap: onTapped, 
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                illustrationimage,
                fit: BoxFit.fitWidth,
                width: carTypewidth,
                height: carTypewidth,
              ),
            ),
            Container(
              width: double.infinity,
             
              padding: const EdgeInsets.symmetric(vertical: 8),
             
              child: Text(
                illustrationname,
                textAlign: TextAlign.center,
                style: context.textStyle.titlemd.copyWith(color: const Color.fromARGB(246, 81, 54, 10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
