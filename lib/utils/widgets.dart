import 'package:flutter/material.dart';

class FixedCircularProgressIndicator extends StatelessWidget {
  const FixedCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Center(
        child: SizedBox(
          width: 40,
          height: 40,
          child: CircularProgressIndicator(strokeWidth: 3),
        ),
      ),
    );
  }
}
