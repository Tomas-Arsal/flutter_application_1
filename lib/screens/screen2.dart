import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            icon: const Icon(Icons.search ,),
            onPressed: () {},
          ),
        ],
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: Banner(
                name1: 'Today',
                name2: '2/10 Tasks',
                imagePath: Assets.assetsImagesGroup,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Banner(
                name1: 'Tomorrow',
                name2: '5/10 Tasks',
                imagePath: Assets.assetsImagesGroup,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Banner(
                name1: 'Upcoming',
                name2: '8/10 Tasks',
                imagePath: Assets.assetsImagesGroup,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  final String name1;
  final String name2;
  final String imagePath;

  const Banner({
    super.key,
    required this.name1,
    required this.name2,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded( 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

Avatar(imagePath1: 'https://cdn.pixabay.com/photo/2024/05/30/22/14/bird-8799413_1280.jpg',
imagePath2: 'https://cdn.pixabay.com/photo/2024/05/30/22/14/bird-8799413_1280.jpg'),


SizedBox(height: 80),
                Text(
                  name1,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  name2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            imagePath,
            height: 60,
            width: 60,
          ),
        ],
      ),
    );
  }
}





class Avatar extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;

  const Avatar({
    super.key,
    required this.imagePath1,
    required this.imagePath2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50, 
      height: 32,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(imagePath1),
            ),
          ),
          Positioned(
            left: 20,
            child: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(imagePath2),
            ),
          ),
        ],
      ),
    );
  }
}