// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bestAgents extends StatelessWidget {
  final String name;
  final int value;
  final gambar;
  const bestAgents({ Key? key, required this.name, required this.value, required this.gambar }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: gambar,
                      ),
                      SizedBox(height: 15,),
                      Text(name,style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),),
                      SizedBox(height: 5,),
                      Text("${value} sold",style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),),
                    ]),
                  ),
                );
  }
}