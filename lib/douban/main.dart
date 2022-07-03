import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: StarRating(rating: 4),
    );
  }
}

class StarRating extends StatefulWidget {
  late final double rating;
  late final double maxRating;
  late final int count;
  late final double size;
  late final Color unSelectColor;
  late final Color selectColor;

  StarRating({
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unSelectColor = const Color(0xffbbbbbb),
    this.selectColor = const Color(0xffff0000),
  });

  @override
  State<StarRating> createState() => StarRatingState();
}

class StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: buildUnselecttedStar()),
      ],
    );
  }

  List<Widget> buildUnselecttedStar() {
    return List.generate(
        widget.count,
        (index) => Icon(Icons.star_border,
            color: widget.unSelectColor, size: widget.size));
  }

  List<Widget> buildselecttedStar() {
    List<Widget> stars = [];

    return stars;
  }
}
