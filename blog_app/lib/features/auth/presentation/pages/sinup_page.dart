import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SinUpPagState extends StatefulWidget {
  const SinUpPagState({super.key});

  @override
  State<SinUpPagState> createState() => SinUpPagStateState();
}

class SinUpPagStateState extends State<SinUpPagState> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Text('Sign Up',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 30),
            const AuthField(hintText: 'Name'),
             const SizedBox(height: 15),
            const AuthField(hintText: 'Email'),
             const SizedBox(height: 15),
            const AuthField(hintText: 'Password'),
            const SizedBox(height: 20),
            const AuthGradientButton(),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(text: "Don't have an account?",
              style: Theme.of(context).textTheme.titleMedium,
              children: [
                TextSpan( 
                  text:('Sin In'),
                  style:  Theme.of(context).textTheme.titleMedium?.copyWith(
                    color:AppPallete.gradient1,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  ),
              ]),
             
            ),
            
          ],
        ),
      ),
      
    );
  }
}