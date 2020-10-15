import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'hole_painter.dart';
import 'staggered_raindrop_animation.dart';

class AnimationScreen extends StatefulWidget {
  AnimationScreen({this.color});

  final Color color;

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  Size size = Size.zero;
  AnimationController _controller;
  StaggeredRaindropAnimation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _animation = StaggeredRaindropAnimation(_controller);
    _controller.forward();

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      size = MediaQuery.of(context).size;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: HolePainter(
                color: widget.color,
                holeSize: _animation.holeSize.value * size.width),
          ),
        ),
        Positioned(
          top: _animation.dropPosition.value * size.height,
          left: size.width / 2 - _animation.dropSize.value / 2,
          child: SizedBox(
            width: _animation.dropSize.value,
            height: _animation.dropSize.value,
            child: CustomPaint(
              painter: DropPainter(visible: _animation.dropVisible.value),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: _animation.textOpacity.value,
              child: Container(
                height: 120,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                      child: Image.asset("assets/icon/logo.png"),
                    ),
                    Text(
                      'Connectis',
                      style: TextStyle(color: WhiteColor, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class DropPainter extends CustomPainter {
  DropPainter({this.visible = true});

  bool visible;

  @override
  void paint(Canvas canvas, Size size) {
    if (!visible) {
      return;
    }

    Path path = new Path();
    path.moveTo(size.width / 2, 0);
    path.quadraticBezierTo(0, size.height * 0.8, size.width / 2, size.height);
    path.quadraticBezierTo(size.width, size.height * 0.8, size.width / 2, 0);
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
