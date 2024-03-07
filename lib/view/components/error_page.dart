import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomErrorPage extends ConsumerStatefulWidget {
  final FlutterErrorDetails errorDetails;
  const CustomErrorPage({super.key, required this.errorDetails});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => Custom_ErrorPageState();
}

class Custom_ErrorPageState extends ConsumerState<CustomErrorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icons/error.webp"),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     // const Text("Something went wrong...", style: TextStyle(fontWeight: FontWeight.bold),),
      //   ],
      // ),
    );
  }
}