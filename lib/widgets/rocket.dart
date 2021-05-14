import 'package:flutter/material.dart';

class RocketWidget extends StatefulWidget {
  @override
  _RocketWidgetState createState() => _RocketWidgetState();
}

class _RocketWidgetState extends State<RocketWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween(
      begin: Offset.zero,
      end: Offset(0, 0.08),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/clouds.png"),
        SlideTransition(
          position: _animation,
          child: Image.asset("assets/images/rocket_person.png"),
        ),
      ],
    );
  }
}
