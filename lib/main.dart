import 'package:flutter/material.dart';
import 'package:my_pictionary/screens/create_room_screen.dart';
import 'package:my_pictionary/screens/join_room_screen.dart';
import 'screens/main_room_choice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_pictionary',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 59, 141, 141),
        ),
      ),
      //route to other pages(widgets)
      routes: {
        MainRoomChoice.routeName: (context) => const MainRoomChoice(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
      },
      initialRoute: MainRoomChoice.routeName,
    );
  }
}
