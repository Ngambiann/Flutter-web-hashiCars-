import 'package:flutter/material.dart';
import 'package:hashicars/extensions.dart';

class HeroSearchbar extends StatefulWidget {
  const HeroSearchbar({super.key});

  @override
  State<HeroSearchbar> createState() => _HeroSearchbarState();
}

class _HeroSearchbarState extends State<HeroSearchbar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: BumperClipper(),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(130, 241, 179, 108),
                  const Color.fromARGB(255, 176, 123, 39),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  controller: SearchController(),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search...",
                    hintStyle: context.textStyle.labelmd,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none
                    ),
                    suffixIcon: Icon(color: Colors.black, Icons.search),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BumperClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80); 

    path.cubicTo(
      size.width * 0.25,
      size.height - 40, //ctrlpnt1
      size.width * 0.75,
      size.height - 40, //ctrlpnt2
      size.width,
      size.height - 80, //Endpnt
    );

    path.lineTo(size.width, 0); 
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
