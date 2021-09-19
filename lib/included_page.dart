import 'package:flutter/material.dart';

class IncludedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Included in this template:',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
