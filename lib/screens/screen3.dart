import 'package:flutter/material.dart';
class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tayo's Projects"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FilterChip(label: 'All', count: 17, color: Color.fromARGB(255, 41, 65, 85)),
                  FilterChip(label: 'To Do', count: 5, color: Color.fromARGB(255, 64, 31, 70)),
                  FilterChip(label: 'In Progress', count: 3, color: Color.fromARGB(255, 55, 43, 26)),
                  FilterChip(label: 'Done', count: 9, color: Color.fromARGB(255, 40, 83, 42)),
                ],
              ),
              const SizedBox(height: 20),
              const TaskCard(
                title: 'Create Ad Banner',
                time: '2 hours ago',
                avatarCount: 2,
              ),
              const SizedBox(height: 10),
              const TaskCard(
                title: 'Create New Blog Post',
                time: '2 hours ago',
                avatarCount: 1,
              ),
              const SizedBox(height: 10),
              const TaskCard(
                title: 'Online Course',
                time: '2 hours ago',
                avatarCount: 1,
              ),
              const SizedBox(height: 10),
              const TaskCard(
                title: 'Complete Portfolio',
                time: '2 hours ago',
                avatarCount: 3,
              ),
              const SizedBox(height: 10),
              const TaskCard(
                title: 'Plan For Next Week',
                time: '2 hours ago',
                avatarCount: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterChip extends StatelessWidget {
  final String label;
  final int count;
  final Color color;

  const FilterChip({
    super.key,
    required this.label,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Text(
            '$count',
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String time;
  final int avatarCount;

  const TaskCard({
    super.key,
    required this.title,
    required this.time,
    required this.avatarCount,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),

Avatar(imagePath1: 'https://cdn.pixabay.com/photo/2024/05/30/22/14/bird-8799413_1280.jpg',
imagePath2: 'https://cdn.pixabay.com/photo/2024/05/30/22/14/bird-8799413_1280.jpg')
  


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