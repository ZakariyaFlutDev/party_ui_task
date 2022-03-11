import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum TypeAnim { opacity, translate }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<TypeAnim>()
      ..add(TypeAnim.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 500))
      ..add(TypeAnim.translate, Tween(begin: -30.0, end: 0.0),
          Duration(milliseconds: 500), Curves.easeOut);


    return PlayAnimation<MultiTweenValues<TypeAnim>>(
      tween: tween,
      duration: tween.duration,
      delay: Duration(milliseconds: (500*delay).round()),
      child: child,
      builder: (ctx, child, v){
        return Opacity(
          opacity: v.get(TypeAnim.opacity),
          child: Transform.translate(
            offset: Offset(0, v.get(TypeAnim.translate)),
            child: child,
          ),
        );
      },
    );

  }
}
