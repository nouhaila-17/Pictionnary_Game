// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;

//singleton pattern class where we can have one instance only
class SocketClient {
  IO.Socket? socket;
  static SocketClient? _instance;
  //private constructor :
  SocketClient._internal() {
    socket = IO.io('http://192.168.1.118:1337', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    }); //server's ip for now it's the computer's ip
    socket!.connect(); //using this socket to connect to the app

    // Emit a custom event to trigger the "connection" event on the server
    //socket!.emit('clientConnected');
  }

  //getter for the _instance
  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }

  // Function to handle errors
  void handleError(error) {
    // ignore: avoid_print
    print(
        'Error: $error'); // You can customize how you want to handle the error here
  }

  // Function to trigger an error for demonstration purposes
  void triggerError() {
    try {
      // Code that may throw an error
    } catch (error) {
      handleError(error);
    }
  }
}
