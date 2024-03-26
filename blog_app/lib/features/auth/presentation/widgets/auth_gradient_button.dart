import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          AppPallete.gradient1,
          AppPallete.gradient2,
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        ),  
          borderRadius: BorderRadius.all(Radius.circular(10)),)
         ,
          
      child: ElevatedButton(onPressed: (){}, 
      child: const Text('Sin Up',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(395, 55),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent
      ),
      ),
    );
  }
}