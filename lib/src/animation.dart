import 'package:flutter/material.dart';

/// A simple size transition animation, that would make it looks like it's
/// child widgets "floats up" from the bottom. When it's animation is reversed
/// (e.g. widget is getting hidden), it "floats down" to the bottom.
class FloatUpAnimation extends StatefulWidget {
  final Widget child;
  final bool display;
  final Duration duration;

  /// Animate [child] for [duration].
  /// If [display] is changed from false to true or set to true initially,
  /// then the [child] "floats up".
  /// Otherwise - [child] "floats down".
  FloatUpAnimation({
    @required this.child,
    this.display = false,
    Duration duration
  }) : this.duration = duration ?? const Duration(milliseconds: 400);

  @override
  State<StatefulWidget> createState() {
    return FloatUpAnimationState(duration);
  }
}

class FloatUpAnimationState extends State<FloatUpAnimation> with SingleTickerProviderStateMixin {
  AnimationController controller;

  FloatUpAnimationState(Duration duration) {
    controller = AnimationController(vsync: this, duration: duration);
  }

  void initialize(FloatUpAnimation widget) {
    toggleAnimation(widget);
  }

  void destroy() {
    controller.dispose();
  }

  void toggleAnimation(FloatUpAnimation widget) {
    if (widget.display) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    initialize(widget);
  }

  @override
  void didUpdateWidget(FloatUpAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    toggleAnimation(widget);
  }

  @override
  void dispose() {
    destroy();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
          parent: controller,
          curve: Curves.fastOutSlowIn
      ),
      child: widget.child,
    );
  }
}
