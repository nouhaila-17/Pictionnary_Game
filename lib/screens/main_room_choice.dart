import 'package:flutter/material.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/screens/create_room_screen.dart';
import 'package:my_pictionary/screens/join_room_screen.dart';
import '../utils/color.dart';
import '../widgets/costum_button.dart';

class MainRoomChoice extends StatelessWidget {
  //routes for after this page
  static String routeName = '/main-room-choice';
  const MainRoomChoice({
    super.key,
  });
// fonctions for the action of the onClick
  void createRoom(BuildContext context) {
    Navigator.pushNamed(context,
        CreateRoomScreen.routeName); //routeName here needs to be brought
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(
        context, JoinRoomScreen.routeName); //routeName here needs to be brought
  }

  //Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundColor(
        child: Responsive(
          //widget responsive
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Pictionary',
                style: TextStyle(
                  fontSize: 24, // Update font size as desired
                  fontWeight: FontWeight.bold, // Update font weight as desired
                  color: Colors.black,
                  height: 3,
                ),
              ),
              CustomButton(
                onClick: () => createRoom(context),
                text: 'Create room',
              ),
              const SizedBox(height: 20),
              CustomButton(
                onClick: () => joinRoom(context),
                text: 'Join room',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
