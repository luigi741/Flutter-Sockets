import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MyHomePage extends StatefulWidget {
	final WebSocketChannel channel;
	final Function messageHandler;

	MyHomePage({this.channel, this.messageHandler});

	@override
	_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	final String appTitle = 'Flutter Sockets';

	TextEditingController _controller = TextEditingController();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
			appBar: AppBar(
				title: Text(appTitle),
				centerTitle: true,
			),
			body: Container(
				width: double.infinity,
				height: 300.0,
				child: Container(
					padding: EdgeInsets.all(10.0),
					child: Card(
						elevation: 5.0,
						child: Column(
							children: <Widget>[
								SizedBox(
									height: 12.0,
								),
								Text(
									'Socket Testing',
									style: TextStyle(
										fontSize: 30.0,
										fontWeight: FontWeight.bold,
									),
								),
								Divider(),
								Container(
									padding: EdgeInsets.symmetric(horizontal: 20.0),
									child: ButtonTheme(
										minWidth: double.infinity,
										child: RaisedButton(
											onPressed: () {},
											child: Text('Send Message', style: TextStyle(color: Colors.white),)
										)
									),
								) 
							],
						)
					)
				),
			),
		);
	}
}