import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen ( this.starQuiz,{super.key});
  final void Function() starQuiz;
  @override
  Widget build(context){

    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset("assets/images/s.jpg",
              width: 400,
              height: 500,
              color:Color.fromARGB(150, 255, 255, 255),
              colorBlendMode: BlendMode.modulate,
            ),

         // Opacity(
         //   opacity: 0.6,
         //   child: Image.asset("assets/images/s.jpg",
         //     width: 400,
         //     height: 500,
         //   ),

            const SizedBox(height: 0),
             Text('Learn flutter the fun way',style: GoogleFonts.lato(
              color: Colors.white,fontSize: 28
            ),
            ),
            const SizedBox(height: 30,),
            OutlinedButton.icon(
                onPressed: starQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white

                ),
                icon: const Icon(Icons.arrow_right_alt),
                label:  const Text(" quiz start "))
        ],

    ));
  }
}