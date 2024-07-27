import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomElevatedButton(
            // Pass additional arguments for text and icon 
            text: '01',
            name: 'Abhay Kumar',
            subText: 'for mutual funds',
          ),
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String name;
  final String subText;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.name,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(368, 93),
        backgroundColor: const Color(0xFF9DCBC9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Adjust radius as needed
        ),
      ),
      child: Row(
        children: [
          Text(text, style: const TextStyle(color: Colors.black, fontSize: 48, fontWeight: FontWeight.w800)),
          const SizedBox(width: 16), // Add spacing between elements
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abhay kumar'),
              const SizedBox(height: 1),
              Text('for mutual funds'),
            ],
          ),
          const Spacer(), // Push icon to the end
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
