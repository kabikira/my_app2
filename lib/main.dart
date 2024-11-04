import 'package:flutter/material.dart';
import 'gen/assets.gen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeScreen(),
    )
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    const endpoint = String.fromEnvironment('apiEndpoint');
    const logLevel = int.fromEnvironment('logLevel');
    const enableDebugMenu = bool.fromEnvironment('enableDebugMenu');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Assets.check.svg(
            width: 72,
            height: 72,
          ),
            Text('Endpoint: $endpoint'),
            Text('Log Level: $logLevel'),
            Text('Enable Debug Menu: $enableDebugMenu'),
          ],
        ),
      ),
    );
  }
}