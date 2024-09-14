import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';

class StfScreen extends StatefulWidget {
  const StfScreen({super.key});

  @override
  State<StfScreen> createState() => _StfScreenState();
}

class _StfScreenState extends State<StfScreen> {
  int _clicks = 0;
  void _increase() {
    setState(() {
      _clicks = _clicks + 1;
    });
  }

  @override
  void dispose() {
    print(_clicks);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Update sooooon!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          Gaps.v10,
          const Text(
            "Try click '+' button",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          Gaps.v20,
          Text(
            "$_clicks",
            style: const TextStyle(
              fontSize: 48,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: _increase,
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
