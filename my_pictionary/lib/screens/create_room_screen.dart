import 'package:flutter/material.dart';
import 'package:my_pictionary/resources/socket_methods.dart';
import 'package:my_pictionary/widgets/custom_button.dart';
import 'package:my_pictionary/widgets/custom_textfield.dart';

import '../widgets/custom_text.dart';
import '../responsive/responsive.dart';
import '../utils/color.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoomScreen> {
  //instance of TextEditingController that controlls the text input in a text field widget. It allows you to read, write, and listen to changes in the text value of the text field.
  final TextEditingController _nameController = TextEditingController();
  //
  final SocketMethods _socketMethods = SocketMethods();
  //preventing memory leaks and releasing any resources held by _nameController
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  //
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
                    text: 'Create a Room',
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  CustomTextField(
                      controller: _nameController,
                      hintText: 'Enter the room Name'),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  CustomButton(
                      onClick: () =>
                          _socketMethods.createRoom(_nameController.text),
                      text: 'Create'),
                ]),
          ),
        ),
      ),
    );
  }
}
