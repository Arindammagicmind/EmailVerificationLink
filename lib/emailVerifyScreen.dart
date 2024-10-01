import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top Image
              // Image.asset(
              //   'assets/verification_icon.png', // Add your own image here
              //   height: 100,
              // ),
              SizedBox(height: 24),
              
              // "Verify your email address" text
              Text(
                'Verify your email address',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),

              // Subtext about the email
              Text(
                "You've entered elizabeth@bennet.com as the email address for your account.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),

              // Instruction text
              Text(
                "Please verify this email address by clicking the button below.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),

              // Verify email button
              ElevatedButton(
                onPressed: () {
                  // Add your onPressed action here
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  child: Text(
                    'Verify your email',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 24),

              // Alternative text with link
              Text(
                'Or copy and paste this link into your browser:',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 8),
              
              // URL Link (not clickable, just text)
              Text(
                'https://www.janeaustenlover.com/verifyemail?link=example',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}