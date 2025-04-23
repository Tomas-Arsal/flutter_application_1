import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text('Today'),
                    const Text('2/10 Tasks'),
                    Image.asset(Assets.assetsImagesEllipse261),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
