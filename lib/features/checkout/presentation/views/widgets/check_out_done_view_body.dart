import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckOutDoneViewBody extends StatelessWidget {
  const CheckOutDoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 80.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.3,
            left: -30,
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.3,
            right: -30,
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFD9D9D9),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFF34A853),
                child: Icon(
                  Icons.check,
                  size: 64,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.3 + 30,
            left: 8 + 30,
            right: 8 + 30,
            child: Row(
              children: List.generate(
                20,
                (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      color: const Color(0xFFB7B7B7),
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
