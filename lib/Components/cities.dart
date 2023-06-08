import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cities extends StatelessWidget {
  final String title;
  final int value;
  final gambar;
  const cities({ Key? key, required this.title, required this.value, required this.gambar }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: gambar,
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(title, style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),),
                          SizedBox(height: 5,),
                          Text("${value} Property", style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),),
                        ],)
                      ]),
                    ),
                  );
  }
}