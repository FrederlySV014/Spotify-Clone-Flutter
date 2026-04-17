import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/common/widgets/appbar/app_bar.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // AppBar personalizado (flecha atrás)
          const BasicAppBar(),

          // Elementos de fondo (Images and Vectors)
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG
            )
          ),

          // Contenido principal
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric( horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  //Logo Spotify
                  Column(
                    children: [
                      const SizedBox(height: 10,),
                      SvgPicture.asset(
                        AppVectors.logo,
                        height: 150,
                      ),
                    ],
                  ),

                  // Texto principal y descripción
                  Column(
                    children: [
                      const Text(
                        'Enjoy Listening To Music',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 16,),

                      Text(
                        'Spotify is a digital music service that gives you access to millions of songs.',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: context.isDarkMode
                              ? AppColors.grey
                              : AppColors.darkGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  
                  // Buttons
                  Column(
                    children: [
                      BasicAppButton(
                        onPressed: () {},
                        title: 'Register',
                      ),

                      const SizedBox(height: 12),

                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: context.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ) 
          )
        ],
      ),
    );
  }
}