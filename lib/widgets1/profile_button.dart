import 'package:flutter/material.dart';
import 'package:flutter_application_6/widgets1/text_style_buttons.dart';

class ProfileActionButton extends StatelessWidget {
  const ProfileActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        // child: const Text(
        //   'Edit Profile',
        //   style: TextStyle(fontSize: 18, color: Colors.white),
        // ),
          child: const Text(
            'Edit Profile',
            style: buttonTextStyle,
        ),
      ),
    );
  }
}
