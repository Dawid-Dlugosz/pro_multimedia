import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/modals/filters_modal/widgets/slider/custom_divider.dart';

enum ArrowPosition {
  center,
  left,
  right,
}

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late final ColorExtension _colorExtension;
  final double _labelWidth = 83;

  double _currentValue = 50;
  bool _labelVisibility = false;
  double _labelPosition = 0;
  ArrowPosition _arrowPosition = ArrowPosition.center;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _colorExtension = Theme.of(context).extension<ColorExtension>()!;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomDivider(),
          LayoutBuilder(
            builder: (context, constraints) {
              double paddingSlider = 20;
              double sliderWidth = constraints.maxWidth - paddingSlider;
              double position = (_currentValue / 100) * sliderWidth;

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "0km",
                          style: TextStyle(
                            fontSize: 12,
                            color: _colorExtension.textColor.withOpacity(0.7),
                          ),
                        ),
                        Text(
                          "100km",
                          style: TextStyle(
                            fontSize: 12,
                            color: _colorExtension.textColor.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        child: Slider(
                          value: _currentValue,
                          min: 0,
                          max: 100,
                          onChangeStart: (value) {
                            setState(() {
                              _labelVisibility = true;
                            });
                          },
                          onChangeEnd: (value) {
                            Future.delayed(const Duration(seconds: 1), () {
                              setState(() {
                                _labelVisibility = false;
                              });
                            });
                          },
                          onChanged: (value) {
                            double position = 0;
                            if (value > 90) {
                              _arrowPosition = ArrowPosition.right;
                              position = _labelWidth - (paddingSlider / 2);
                            } else if (value < 30) {
                              _arrowPosition = ArrowPosition.left;
                              position = -(paddingSlider / 2);
                            } else {
                              _arrowPosition = ArrowPosition.center;
                              position =
                                  (_labelWidth / 2) - (paddingSlider / 2);
                            }
                            setState(() {
                              _currentValue = value;
                              _labelPosition = position;
                            });
                          },
                        ),
                      ),
                      Positioned(
                        left: position - _labelPosition,
                        bottom: 0,
                        child: Visibility(
                          visible: _labelVisibility,
                          child: Transform.translate(
                            offset: const Offset(0, 45),
                            child: CustomPaint(
                              painter: _ArrowPainter(
                                color: _colorExtension.configColor,
                                arrowPosition: _arrowPosition,
                              ),
                              child: Container(
                                width: _labelWidth,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                    color: _colorExtension.configColor,
                                    borderRadius: BorderRadius.only(
                                      topRight:
                                          _arrowPosition == ArrowPosition.right
                                              ? Radius.zero
                                              : const Radius.circular(16),
                                      topLeft:
                                          _arrowPosition == ArrowPosition.left
                                              ? Radius.zero
                                              : const Radius.circular(16),
                                      bottomRight: const Radius.circular(16),
                                      bottomLeft: const Radius.circular(16),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(1, 4),
                                        blurRadius: 2.1,
                                        color: Colors.black.withOpacity(0.09),
                                      ),
                                    ]),
                                child: Text(
                                  "${_currentValue.toInt()}km",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _colorExtension.lightBackgroud,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          const CustomDivider(),
        ],
      ),
    );
  }
}

class _ArrowPainter extends CustomPainter {
  _ArrowPainter({
    required this.color,
    required this.arrowPosition,
  });

  final Color color;
  final ArrowPosition arrowPosition;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final trianglePath = Path();

    if (arrowPosition == ArrowPosition.center) {
      trianglePath.moveTo(size.width / 2 - 5, 0);
      trianglePath.lineTo(size.width / 2, -6);
      trianglePath.lineTo(size.width / 2 + 5, 0);
    } else if (arrowPosition == ArrowPosition.left) {
      trianglePath.moveTo(0, 0);
      trianglePath.lineTo(0, -6);
      trianglePath.lineTo(5, 0);
    } else {
      trianglePath.moveTo(size.width - 5, 0);
      trianglePath.lineTo(size.width, -6);
      trianglePath.lineTo(size.width, 0);
    }

    trianglePath.close();

    canvas.drawPath(trianglePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
