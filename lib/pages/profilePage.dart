import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Tasks'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SingleChildScrollView(
                child: DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(Assets.assetsImagesEllipse),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'John Doe',
                          style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        Text(
                          'Software Engineer',
                          style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 11, 8, 8)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.settings, color: Colors.black),
                title: Text('App Settings', style: TextStyle(color: Colors.black)),
              ),
              const Divider(color: Colors.grey),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Account',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('Change account name', style: TextStyle(color: Colors.black)),
              ),
              const ListTile(
                leading: Icon(Icons.lock, color: Colors.black),
                title: Text('Change account password', style: TextStyle(color: Colors.black)),
              ),
              const ListTile(
                leading: Icon(Icons.camera_alt, color: Colors.black),
                title: Text('Change account Image', style: TextStyle(color: Colors.black)),
              ),
              SwitchListTile(
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                value: true,
                title: const Text(
                  'Change Mode',
                  style: TextStyle(color: Colors.black),
                ),
                onChanged: (bool value) {
                  // Handle toggle
                },
              ),
              const Divider(color: Colors.grey),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Uptodo',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.info, color: Colors.black),
                title: Text('About US', style: TextStyle(color: Colors.black)),
              ),
              const ListTile(
                leading: Icon(Icons.help, color: Colors.black),
                title: Text('FAQ', style: TextStyle(color: Colors.black)),
              ),
              const ListTile(
                leading: Icon(Icons.feedback, color: Colors.black),
                title: Text('Help & Feedback', style: TextStyle(color: Colors.black)),
              ),
              const ListTile(
                leading: Icon(Icons.support, color: Colors.black),
                title: Text('Support US', style: TextStyle(color: Colors.black)),
              ),
              const Divider(color: Colors.grey),
              const ListTile(
                leading: Icon(Icons.logout, color: Colors.black),
                title: Text('Log out', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Handle add task action
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Add Task'),
                      content: TextField(
                        decoration: const InputDecoration(hintText: 'Enter task name'),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                         
                          },
                          child: const Text('Add'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 40, 8, 46),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.note_add, color: Colors.white),
              label:  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 130),
                child: Text(
                  'add tasks',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                 ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'To do Tasks',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  TaskCard(
                    isCompleted: false,
                    title: 'Task 1 for today',
                    subtitle: 'When',
                    onDelete: () {
                    },
                  ),
                  const SizedBox(height: 10),
                  TaskCard(
                    isCompleted: true,
                    title: 'Task 1 for today',
                    subtitle: 'Position',
                    onDelete: () {
                    },
                  ),
             
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final bool isCompleted;
  final String title;
  final String subtitle;
  final VoidCallback onDelete;

  const TaskCard({
    super.key,
    required this.isCompleted,
    required this.title,
    required this.subtitle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isCompleted ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                isCompleted ? Icons.check_circle : Icons.circle_outlined,
                color: isCompleted ? Colors.green : Colors.grey,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isCompleted ? Colors.black : Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: isCompleted ? Colors.grey : Colors.white70,
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: onDelete,
            icon: const Icon(Icons.delete, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
