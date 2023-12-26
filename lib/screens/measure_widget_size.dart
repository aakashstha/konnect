import 'package:flutter/material.dart';
import 'package:measured_size/measured_size.dart';

// How to know width and height of any widget.
class MeasureWidgetSize extends StatefulWidget {
  const MeasureWidgetSize({super.key});

  @override
  State<MeasureWidgetSize> createState() => _MeasureWidgetSizeState();
}

class _MeasureWidgetSizeState extends State<MeasureWidgetSize> {
  final _key1 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            MeasuredSize(
              onChange: (Size size) {
                print(size);
              },
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ),
            // Icon(Icons.abc)

            // Text(
            //   "Aakash Shrestha with very good",
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            ElevatedButton(
              key: _key1,
              onPressed: () {
                print(
                    "Elevated Button w = ${_key1.currentContext!.size!.width}");
                print(
                    "Elevated Button h = ${_key1.currentContext!.size!.height}");
              },
              child: Text("Elevated Button"),
            ),
            Container( 
              width: 200,
              height: 200,
              color: Colors.green,
              child: Center(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double height = constraints.maxHeight;
                    double width = constraints.maxWidth;
                    return Text(
                        "The w = $width and h = $height of the container.");
                  },
                ),
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more),
              // constraints: BoxConstraints.tight(const Size(21.5, 21.5)),
              // padding: EdgeInsets.zero,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more),
              // constraints: BoxConstraints.tight(const Size(21.5, 21.5)),
              // padding: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
