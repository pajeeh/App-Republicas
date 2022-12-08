// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../colors/colors.dart';

class FloatingAppBarWidget extends StatefulWidget {
  const FloatingAppBarWidget({super.key});

  @override
  _FloatingAppBarWidgetState createState() => _FloatingAppBarWidgetState();
}

class _FloatingAppBarWidgetState extends State<FloatingAppBarWidget>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  double height = 50;
  double moveProgress = 0;
  late AnimationController controller;
  late Animation<double> animation;
  List menuList = [
    Icons.supervisor_account,
    Icons.home,
    Icons.favorite,
    Icons.search,
  ];

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double itemWidth = width / menuList.length;
        double floatingIconRadius = itemWidth * 0.15;
        return Container(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: width,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      // floating icon
                      Positioned(
                        top: controller.value <= 0.5
                            ? (controller.value * height - height * 0.2)
                            : (1 - controller.value) * height - height * 0.2,
                        left: moveProgress * itemWidth +
                            itemWidth / 2 -
                            floatingIconRadius,
                        child: CircleAvatar(
                          radius: floatingIconRadius,
                          backgroundColor: verde,
                          child: Icon(
                            menuList[currentIndex],
                            color: preto,
                          ),
                        ),
                      ),

                      CustomPaint(
                        painter: NotchedPainter(
                          itemCount: menuList.length,
                          progress: moveProgress,
                        ),
                        child: SizedBox(
                          height: height,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: menuList.asMap().keys.map(
                              (value) {
                                return GestureDetector(
                                  child: Opacity(
                                    opacity: currentIndex == value ? 0 : 1,
                                    child: CircleAvatar(
                                      child: Icon(menuList[value]),
                                    ),
                                  ),
                                  onTap: () {
                                    changeIndex(value);
                                  },
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

// Switch navigation
  changeIndex(int newIndex) {
    double oldPosition = currentIndex.toDouble();
    double newPosition = newIndex.toDouble();
    if (oldPosition != newPosition &&
        controller.status != AnimationStatus.forward) {
      controller.reset();
      animation = Tween(begin: oldPosition, end: newPosition).animate(
          CurvedAnimation(parent: controller, curve: Curves.easeInOutCubic))
        ..addListener(() {
          setState(() => moveProgress = animation.value);
        })
        ..addStatusListener(
          (AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              setState(() => currentIndex = newIndex);
            }
          },
        );
      controller.forward();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class NotchedPainter extends CustomPainter {
  final int itemCount;
  final double progress;

  NotchedPainter({required this.itemCount, required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = (orchid)
      ..style = PaintingStyle.fill;
    double canvasWidth = size.width;
    double itemWidth = canvasWidth / itemCount;
    double canvasHeight = size.height;
    double notchedWidth = itemWidth * 0.75;

    var p1 = const Offset(0, 0);
    var p2 = Offset(0, canvasHeight);
    var p3 = Offset(canvasWidth, canvasHeight);
    var p4 = Offset(canvasWidth, 0);
    var p5 = Offset(
        progress * itemWidth +
            itemWidth / 2.0 +
            notchedWidth / 2.0 +
            notchedWidth * 0.2,
        0);
    var p6 = Offset(progress * itemWidth + itemWidth / 2, canvasHeight * 0.75);
    var p7 = Offset(
        (itemWidth - notchedWidth) / 2.0 +
            progress * itemWidth -
            notchedWidth * 0.2,
        0);

    var c1 = Offset(p5.dx - notchedWidth * 0.5, 0);
    var c2 = Offset(p5.dx - notchedWidth * 0.2, p6.dy);
    var c3 = Offset(p7.dx + notchedWidth * 0.2, p6.dy);
    var c4 = Offset(p7.dx + notchedWidth * 0.5, 0);

    Path path = Path()
      ..moveTo(p1.dx, p1.dy)
      ..lineTo(p2.dx, p2.dy)
      ..lineTo(p3.dx, p3.dy)
      ..lineTo(p4.dx, p4.dy)
      ..lineTo(p5.dx, p5.dy)
      ..cubicTo(c1.dx, c1.dy, c2.dx, c2.dy, p6.dx, p6.dy)
      ..cubicTo(c3.dx, c3.dy, c4.dx, c4.dy, p7.dx, p7.dy)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
