import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Drag',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Star Drag'),
        ),
        body: stardrag(),
      ),
    );
  }
}

class stardrag extends StatefulWidget {
  const stardrag({Key? key});

  @override
  State<stardrag> createState() => _stardragState();
}

class _stardragState extends State<stardrag> {
  List<Widget> dragitem = [
    dragitem1(Icon(Icons.star, color: Colors.white, size: 20)),
    dragitem1(Icon(Icons.star, color: Colors.yellow.shade800, size: 20)),
    dragitem1(Icon(Icons.star, color: Colors.green.shade800, size: 20)),
    dragitem1(Icon(Icons.star, color: Colors.blue.shade800, size: 20)),
    dragitem1(Icon(Icons.star, color: Colors.purple.shade800, size: 20)),
    dragitem1(Icon(Icons.star, color: Colors.yellow.shade900, size: 20)),
    dragitem1(drag(colors: Colors.red, text: "!")),
    dragitem1(drag(colors: Colors.yellow, text: ">>")),
    dragitem1(Container(
      height: 20,
      width: 20,
      color: Colors.red,
      child: Icon(
        Icons.done,
        size: 20,
        color: Colors.black,
      ),
    )),
    dragitem1(drag(colors: Colors.blue, text: "?")),
    dragitem1(drag(colors: Colors.orange, text: "i")),
  ];

  int index1 = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(dragitem.length, (index) {
        return DragTarget<int>(
          onWillAccept: (data) {
            return true;
          },
          onAccept: (data) {
            setState(() {
              // Reorder the items list based on the drop position
              if (index1 != -1) {
                dragitem.insert(index, dragitem.removeAt(index1));
              }
              index1 = -1;
            });
          },
          builder: (context, candidateData, rejectedData) {
            return Draggable(
              data: index,
              // ignore: sort_child_properties_last
              child: dragitem[index],
              feedback: Material(
                child: dragitem[index],
              ),
              childWhenDragging: SizedBox(),
              onDragStarted: () {
                setState(() {
                  index1 = index;
                });
              },
              onDragEnd: (details) {
                // Handle drag end if needed
              },
            );
          },
        );
      }),
    );
  }
}

class dragitem1 extends StatelessWidget {
  final Widget child;

  dragitem1(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: child,
    );
  }
}

class drag extends StatelessWidget {
  final Color colors;
  final String text;

  drag({required this.colors, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      color: colors,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
