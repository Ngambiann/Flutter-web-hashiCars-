import 'package:flutter/material.dart';
import 'package:hashicars/extensions.dart';
import 'package:hashicars/pages/contactinfos/contacts.dart';
import 'package:hashicars/pages/homepage/homepage.dart';
import 'package:hashicars/pages/vehicles/vehicles.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  Widget currentPage = Homepage();
  @override
  Widget build(BuildContext context) {
    void navigateTo(page) {
      setState(() {
        currentPage = page;
      });
    }

    //row and call the class appbar in the body of the homepage(alternative?)
    return Scaffold(
      appBar: AppBar(
        //logo
        leading: SizedBox(
          width: 50,
          height: 50,
          child: Image.asset('assets/images/navbarLogo.png'),
        ),
        title: Text("HASHI CARS", style: context.textStyle.titlelg),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(130, 241, 179, 108),
                        const Color.fromARGB(255, 176, 123, 39),], // Change as needed
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        //homepage
        actions: [
          TextButton(
            onPressed: () {
              navigateTo(Homepage());
            },
            child: Text("Home", style: context.textStyle.labelmd),
          ),
          //vehicles
          SizedBox(width: 12),
          TextButton(
            onPressed: () {
              navigateTo(Vehicles());
            },
            child: Text("Vehicles", style: context.textStyle.labelmd),
          ),
          //contacts
          SizedBox(width: 12),
          TextButton(
            onPressed: () {
              navigateTo(Contacts());
            },
            child: Text("Contact Us", style: context.textStyle.labelmd),
          ),
          
          //instant call button
          
        ],
      ),
      body: currentPage,
    );
  }
}
