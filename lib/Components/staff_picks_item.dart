// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class staffPicksItem extends StatelessWidget {
  final String title;
  final String height;
  final String fee;
  final gambar;
  const staffPicksItem({ Key? key, required this.title, required this.height, required this.fee, required this.gambar }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: gambar,
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),),
                      
                      Text(height, style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),)
                    ],
                  ), 

                  Text(fee, style: GoogleFonts.poppins(
                        fontSize: 15,
                        color : Color.fromARGB(255, 255, 168, 38),
                        fontWeight: FontWeight.w600
                      ),)
                ],)
              ]),
            ),
          );
  }
}