import 'package:flutter/material.dart';

void main() => runApp(const AnimeMasterApp());

class AnimeMasterApp extends StatelessWidget {
  const AnimeMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Master',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Anime Master')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.movie_filter_rounded, size: 120, color: Colors.purpleAccent),
            const SizedBox(height: 24),
            const Text('Convert your real videos into Anime!', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () { /* Upload/select video - placeholder */ },
              icon: const Icon(Icons.upload_file),
              label: const Text('Upload Video'),
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () { /* 2D transform placeholder */ },
              child: const Text('Transform to 2D Anime'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () { /* 3D transform placeholder */ },
              child: const Text('Transform to 3D Anime'),
            ),
          ],
        ),
      ),
    );
  }
}