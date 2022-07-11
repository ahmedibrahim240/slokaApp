import 'package:flutter/material.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  Image(
                    height: 100,
                    width: 100,
                    image: NetworkImage(
                      'https://osta.ng/wp-content/uploads/2020/12/logo.png',
                    ),
                  ),
                  CircularProgressIndicator.adaptive(),
                ],
              ),
            ),
            const Spacer(flex: 1),
            const Expanded(
              flex: 1,
              child: Text(
                'Power By BUGaia',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
