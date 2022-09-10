import 'package:flutter/material.dart';
import 'package:practice_channels/widgets/custom_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: CustomAppBar.getAppBar(
        context: context,
        backgroundColor: Colors.red,
        height: MediaQuery.of(context).size.height * 0.4,
        onActionsTapped: () {},
        showBackButton: true,
        children: [
          const Text(
            'Hi, there!',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Press the Button'),
          ElevatedButton(
            onPressed: () {
              // PlatformServices.showToast(context);
            },
            child: const Text(
              'SHOW TOAST',
            ),
          ),
        ],
      ),
    );
  }
}
