// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    this.text,
    this.onTap
  }) : super(key: key);
 
  final String? text;
  VoidCallback? onTap;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 77, 255, 1), borderRadius: BorderRadius.circular(12)),
          width: double.infinity,
          height: 55,
          child: Center(
            child: Text(
              "Update",
              style: GoogleFonts.acme(color: Colors.black, fontSize: 22),
            ),
          ),
        ));
  }
}
