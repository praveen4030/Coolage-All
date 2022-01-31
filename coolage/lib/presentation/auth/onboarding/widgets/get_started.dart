import 'package:coolage/presentation/auth/login.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        height: 45,
        width: 150,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Kolors.primaryColor1,
              Colors.orange,
            ],
          ),
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Text(
          "Get Started",
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
