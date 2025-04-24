import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello, Mo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome Back',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '2/10 Tasks',
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      Assets.assetsImagesGroup,
                      height: 60,
                      width: 60,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'TO DO',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TaskCard(title: 'Redesign Homescreen', date: '25th October 2029'),
                    TaskCard(title: 'UX Research Sample', date: '17th July 2029'),
                    TaskCard(title: 'Blog Post Design', date: '21th August 2029'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'PROGRESS',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
               const SizedBox(height: 10),
              Column(
                children: const [
                  ProgressCard(
                    title: 'Create Ad Banner',
                    subtitle: 'Tommy max\'s Project',
                    progress: 70,
                    time: '2 hours ago',
                  ),
                  SizedBox(height: 10),
                  ProgressCard(
                    title: 'Create New Blog Post',
                    subtitle: 'Personal Work',
                    progress: 45,
                    time: '2 Days ago',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class TaskCard extends StatelessWidget {
  final String title;
  final String date;

  const TaskCard({required this.title, required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5,
                ),
                const SizedBox(width: 8),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey ,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProgressCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int progress;
  final String time;

  const ProgressCard({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  time,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            '$progress%',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
