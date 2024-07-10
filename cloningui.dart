import 'package:flutter/material.dart';
class CloningUiWidget extends StatefulWidget {
  const CloningUiWidget({super.key});

  @override
  State<CloningUiWidget> createState() => _CloningUiWidgetState();
}

class _CloningUiWidgetState extends State<CloningUiWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(child: Container(
                  height: 350,
                  color: Colors.yellow,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}