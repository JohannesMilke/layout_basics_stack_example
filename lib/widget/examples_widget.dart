import 'package:flutter/material.dart';

class ExamplesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        children: [
          buildProfile(),
          Container(
            padding: EdgeInsets.all(32),
            child: buildImages(),
          ),
        ],
      );

  Widget buildImages() {
    final urlImage1 =
        'https://images.unsplash.com/photo-1476638305939-a09cd694566c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
    final urlImage2 =
        'https://images.unsplash.com/photo-1600319230579-4552a50a0f21?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
    final urlImage3 =
        'https://images.unsplash.com/photo-1615845981669-fd97622bbdec?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80';

    return Stack(
      children: [
        buildImage(
          urlImage: urlImage1,
          margin: EdgeInsets.symmetric(horizontal: 40).copyWith(top: 0),
        ),
        buildImage(
          urlImage: urlImage2,
          margin: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 60),
        ),
        buildImage(
          urlImage: urlImage3,
          margin: EdgeInsets.symmetric(horizontal: 0).copyWith(top: 120),
        ),
      ],
    );
  }

  Widget buildImage({
    required String urlImage,
    required EdgeInsets margin,
  }) =>
      Container(
        margin: margin,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(urlImage),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.25),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildProfile() {
    final urlProfile =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80';

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(color: Colors.orange, height: 120),
            Positioned(
              bottom: -20,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(color: Colors.white, spreadRadius: 4),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(urlProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 40),
        Text(
          'Sarah Abs',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
