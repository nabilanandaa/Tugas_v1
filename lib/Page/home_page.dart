// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_pm/Components/best_agents_item.dart';
import 'package:uts_pm/Components/circleItem.dart';
import 'package:uts_pm/Components/cities.dart';
import 'package:uts_pm/Components/staff_picks_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   selectedLabelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "PSR"),
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.grey,
      //   unselectedLabelStyle: TextStyle(color: Colors.grey, fontFamily: "PSR"),
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.orange,), label: 'Discover'),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favorites'),
      //     BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: 'TV News'),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Settings'),
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //text title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Estate", style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text("Best discovery ever", style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                      ),),
                    ],),
// perbaiki
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(Icons.notifications_outlined),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  ],),
                  

                  SizedBox(height: 25,),

                  Row(
                    children: [
                      Text("Categories",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  circleItem(title: "Hutan", icon: Image.asset("images/fi_wind.png", height: 25,)),
                  SizedBox(width: 20,),
                  circleItem(title: "Toko", icon: Image.asset("images/fi_shopping-bag.png", height: 25,)),
                  SizedBox(width: 20,),
                  circleItem(title: "Gudang", icon: Image.asset("images/fi_truck.png", height: 25,)),
                  SizedBox(width: 20,),
                  circleItem(title: "Hujan", icon: Image.asset("images/fi_cloud-drizzle.png", height: 25,)),
                  SizedBox(width: 20,),
                  circleItem(title: "Office", icon: Image.asset("images/fi_briefcase.png", height: 25,)),
                  SizedBox(width: 20,),
                  circleItem(title: "Location", icon: Icon(Icons.location_city_outlined, size: 25,)),
                  SizedBox(width: 20,),
                  circleItem(title: "Help", icon: Icon(Icons.help_outline, size: 25,)),
                  SizedBox(width: 20,),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text("Staff Picks",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                ],
              ),
            ),
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(width: 15,),
                staffPicksItem(
                  gambar: Image.asset("images/image_6.png"),
                  title: "Lagon Sky", 
                  height: "412 sq ft.", 
                  fee: "\$920"),
                SizedBox(width: 15,),
                staffPicksItem(
                  gambar: Image.asset("images/image_6.png"),
                  title: "Inn Parapat", 
                  height: "800 sq ft.", 
                  fee: "\$559"),
                SizedBox(width: 15,),
                staffPicksItem(
                  gambar: Image.asset("images/image_6.png"),
                  title: "Arman Village", 
                  height: "0 sq ft.", 
                  fee: "\$499"),
                SizedBox(width: 15,),
              ]),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text("Best Agents",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  bestAgents(gambar : Image.asset("images/image_71.png"), name: "Abili", value: 190),
                  SizedBox(width: 15,),
                  bestAgents(gambar : Image.asset("images/image_73.png"),name: "Andika", value: 123),
                  SizedBox(width: 15,),
                  bestAgents(gambar : Image.asset("images/image_75.png"),name: "Syahlan", value: 111),
                  SizedBox(width: 15,),
                  bestAgents(gambar : Image.asset("images/image_71.png"),name: "Ihsan", value: 450),
                  SizedBox(width: 15,),
                  bestAgents(gambar : Image.asset("images/image_73.png"),name: "Ghaza", value: 250),
                  SizedBox(width: 15,),
                  bestAgents(gambar : Image.asset("images/image_75.png"),name: "Ghaza2", value: 25),
                  SizedBox(width: 15,),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Cities",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),

                  SizedBox(height: 10,),

                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column( 
                      children: [
                        cities(gambar : Image.asset("images/image_8.png"),title: "Jakarta Selatan", value: 194),
                        SizedBox(height: 15,),
                        cities(gambar : Image.asset("images/image_9.png"),title: "Bandung", value: 89400),
                        SizedBox(height: 15,),
                        cities(gambar : Image.asset("images/image_10.png"),title: "Denpasar", value: 184000),
                        SizedBox(height: 15,),
                        cities(gambar : Image.asset("images/image_9.png"),title: "Pulau Banyak", value: 8300),
                        SizedBox(height: 15,),
                        cities(gambar : Image.asset("images/image_8.png"),title: "Singkil", value: 55),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),

          ]),
        ),
      ),
    );
  }
}