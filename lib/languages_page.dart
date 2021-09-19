import 'package:flutter/material.dart';

class LanguagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.70),
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text('Languages'),
                ))
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
