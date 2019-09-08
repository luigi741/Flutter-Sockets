import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import './myhomepage.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

// void main() => runApp(MyApp());

void main() async {
	print('Starting in main()');
	var channel = IOWebSocketChannel.connect("ws://192.168.1.123:80");
	channel.sink.add('Connected!');
	channel.stream.listen((message) {
		print(message);
	});

	runApp(MyApp());
}

class MyApp extends StatelessWidget {
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter Demo',
			theme: ThemeData(
				primarySwatch: Colors.indigo,
			),
			home: MyHomePage(),
		);
	}
}
