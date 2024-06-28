// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:aplication1/Fitur/checkin.dart';
import 'package:aplication1/Fitur/manage.dart';
import 'package:aplication1/Fitur/thotel.dart';
import 'package:aplication1/Fitur/tpack.dart';
import 'package:aplication1/Fitur/tplane.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/poto1.JPG",
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Text(
                "Booking Ticket",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.list,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 15),
              // Carousel Slider
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: Duration(seconds: 3),
                ),
                items: [
                  'assets/c1.jpeg',
                  'assets/c2.jpeg',
                  'assets/c3.jpeg',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                          ),
                          child: Image.asset(i, fit: BoxFit.cover),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 15),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange),
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                onPressed: () {
                                  Get.to(planeTicket());
                                },
                                icon: FaIcon(FontAwesomeIcons.planeDeparture))),
                        Spacer(),
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                onPressed: () {
                                  Get.to(hotelTicket());
                                },
                                icon: FaIcon(FontAwesomeIcons.hotel))),
                        Spacer(),
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                onPressed: () {
                                  Get.to(packageTicket());
                                },
                                icon: FaIcon(FontAwesomeIcons.boxArchive))),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 165, 163, 21)),
                                color: Color.fromARGB(255, 213, 223, 62),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                onPressed: () {
                                  Get.to(checkIn());
                                },
                                icon:
                                    FaIcon(FontAwesomeIcons.planeCircleCheck))),
                        Spacer(),
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 147, 79, 159)),
                                color: Color.fromARGB(255, 147, 79, 159),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                onPressed: () {
                                  Get.to(managePlane());
                                },
                                icon: FaIcon(FontAwesomeIcons.calendarCheck))),
                        Spacer(),
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                onPressed: () {
                                  Get.to(managePlane());
                                },
                                icon: FaIcon(FontAwesomeIcons.planeLock))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textAlign: TextAlign.left,
                        "Fligth Offers",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/hk.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "assets/indo.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "assets/korea.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "assets/sg.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "assets/india.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textAlign: TextAlign.left,
                        "Hotel Offers",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/h1.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "assets/h2.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "assets/h3.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "assets/h4.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "assets/h5.jpeg",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
