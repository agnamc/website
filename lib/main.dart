import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boris-Carnot Agnaramon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("images/avatar.jpeg"),
                    radius: 70,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Boris-Carnot Agnaramon',
                      style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Flutter. Android. Some iOS',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => html.window.open(
                            'https://www.notion.so/My-Work-5e50828c8f324eecacf1d60d6ae563c7',
                            'My Work'),
                        child: Text(
                          'My Work',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: () => html.window.open('https://twitter.com/_agnamc_', 'Twitter'),
                        child: Text(
                          'Twitter',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: () => html.window.open('https://drive.google.com/file/d/1iMr2L6AXzFmVSDrcWXOLyTRGbZ0POAEe/view?usp=sharing', 'Resumé'),
                        child: Text(
                          'Resumé',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Made with'),
              Icon(Icons.favorite, color: Colors.red,),
              Text('Powered by'),
              FlutterLogo()
            ],
          )
        ],
      ),
    );
  }
}
