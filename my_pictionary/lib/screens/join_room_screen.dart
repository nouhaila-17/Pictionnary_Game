import 'package:flutter/material.dart';

import '../responsive/responsive.dart';
import '../utils/color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  //_name and gameId controller
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();
  // disposing of them
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: AppBackgroundColor(
        //widget responsive
        child: Responsive(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                    shadows: [
                      Shadow(
                        blurRadius: 96,
                        color: Color.fromARGB(255, 96, 18, 103),
                      )
                    ],
                    fontSize: 24,
                    text: 'Join Room',
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  CustomTextField(
                      controller: _nameController,
                      hintText: 'Enter your userName'),
                  const SizedBox(height: 20),
                  CustomTextField(
                      controller: _gameIdController, hintText: 'Enter room Id'),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  CustomButton(onClick: () {}, text: 'Create'),
                ]),
          ),
        ),
      ),
    );
  }
}
