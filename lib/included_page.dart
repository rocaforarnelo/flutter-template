import 'package:flutter/material.dart';
import 'package:flutter_template/languages_page.dart';

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
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (context, animation, _) =>
                              LanguagesPage()));
                    },
                    icon: Icon(
                      Icons.language,
                      color: Colors.black,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
