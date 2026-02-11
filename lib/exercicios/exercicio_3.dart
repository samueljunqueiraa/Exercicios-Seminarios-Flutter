import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExercicioFonteCustomizada extends StatelessWidget {
  const ExercicioFonteCustomizada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Texto com Fonte Customizada'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          'Texto com Fonte Lobster',
          style: GoogleFonts.lobster(
            fontSize: 32,
            color: Colors.lightBlue,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
