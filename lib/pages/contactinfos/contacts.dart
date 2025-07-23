import 'package:flutter/material.dart';
import 'package:hashicars/extensions.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Text('Contact Us', style: context.textStyle.headlinelg),
                SizedBox(height: 5),
                Text(
                  "Get in touch with our team today",
                  style: context.textStyle.bodymd,
                ),
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //phone contacts
                    SizedBox(
                      height: 150,
                      width: 250,
                      child: Card(
                        color: const Color.fromARGB(130, 219, 155, 82),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone_rounded),
                            Text(
                              "Call us",
                              style: context.textStyle.titlemd,
                            ),
                            Text(
                              "Ask about your future car",
                              style: context.textStyle.bodymd,
                            ),
                            Text.rich(
                              TextSpan(
                                text: "+254 790 669 977",
                                style: context.textStyle.titlesm,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Email
                    SizedBox(
                      height: 150,
                      width: 250,
                      child: Card(
                        elevation: 1.5,
                        color: const Color.fromARGB(130, 219, 155, 82),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.email_rounded),
                            Text(
                              "Email Us",
                              style: context.textStyle.titlemd,
                            ),
                            Text(
                              "Send us your questions",
                              style: context.textStyle.bodymd,
                            ),
                            Text.rich(
                              TextSpan(
                                text: "hashicarsales@gmail.com",
                                style: context.textStyle.titlesm,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Location
                    SizedBox(
                      height: 150,
                      width: 250,
                      child: Card(
                        color: const Color.fromARGB(130, 219, 155, 82),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_pin),
                            Text(
                              "Location",
                              style: context.textStyle.titlemd,
                            ),
                            Text(
                              "Visit the showroom",
                              style: context.textStyle.bodymd,
                            ),
                            Text.rich(
                              TextSpan(
                                text: "Kiambu Road,Nairobi,Kenya",
                                style: context.textStyle.titlesm,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //socials
                    SizedBox(
                      height: 150,
                      width: 250,
                      child: Card(
                        color: const Color.fromARGB(130, 219, 155, 82),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.people_rounded),
                            Text("Socials",style: context.textStyle.titlemd,),
                            Text.rich(
                              TextSpan(
                                children: [
                              

                                ],
                                text: "FaceBook",
                                style: context.textStyle.titlesm
                                ,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //Hours
                SizedBox(height: 30),
                Text(
                  "Business Hours",
                  style: context.textStyle.titlemd,
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Monday - Friday",
                          style: context.textStyle.titlesm,
                        ),
                        SizedBox(height: 10),
                        Text("9:00AM - 7:00 PM"),
                      ],
                    ),
                    SizedBox(width: 35),
                    Column(
                      children: [
                        Text(
                          "Saturday - Sunday",
                          style: context.textStyle.titlesm,
                        ),
                        SizedBox(height: 10),
                        Text("10:00AM - 6:00PM"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
