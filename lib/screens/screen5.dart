import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/form.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  double _currentSliderValue = 20;
  double _currentDiscreteSliderValue = 60;
  bool year2023 = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Let\'s sign in to your account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                FormElement(
                  name: 'Enter your email',
                  icon: Icons.email,
                ),
                const SizedBox(height: 15),
                FormElement(
                  name: 'Enter your password',
                  icon: Icons.lock,
                ),
                const SizedBox(height: 20),
                Slider(
                  activeColor: Colors.blue,
                  value: _currentDiscreteSliderValue,
                  max: 100,
                  divisions: 5,
                  label: _currentDiscreteSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentDiscreteSliderValue = value;
                    });
                  },
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      fillColor: MaterialStateProperty.all(Colors.blue),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember Me',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SwitchListTile(
                  activeColor: Colors.blue,
                  inactiveTrackColor: Colors.grey,
                  value: year2023,
                  title: Text(
                    year2023
                        ? 'Switch to latest M3 style'
                        : 'Switch to year2023 M3 style',
                  ),
                  onChanged: (bool value) {
                    setState(() {
                      year2023 = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.grey,
                  height: 1,
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.grey),
                    ),
                  ),
                  icon: const Icon(
                    Icons.g_mobiledata,
                    color: Colors.red,
                    size: 30,
                  ),
                  label: const Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.grey),
                    ),
                  ),
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 30,
                  ),
                  label: const Text(
                    'Continue with Facebook',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),

Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

