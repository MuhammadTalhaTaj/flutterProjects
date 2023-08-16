import 'package:flutter/material.dart';

import '../../../commonwidgets/appsize.dart';

class CustomSlider extends StatefulWidget {
  ValueChanged valueChanged;


  CustomSlider({required this.valueChanged});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value=0;
  @override
  Widget build(BuildContext context) {

    return    AppSize(
      height: 10,
      width: double.infinity,
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Theme.of(context).colorScheme.primary,
          inactiveTrackColor: Color(0xff634d5a),
          trackShape: RoundedRectSliderTrackShape(),
          trackHeight: 4.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          thumbColor: Theme.of(context).colorScheme.primary,
          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
          tickMarkShape: RoundSliderTickMarkShape(),
          activeTickMarkColor: Theme.of(context).colorScheme.primary,
          inactiveTickMarkColor: Theme.of(context).colorScheme.primary,
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          valueIndicatorColor: Theme.of(context).colorScheme.primary,
          valueIndicatorTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
        child: Slider(
          value: _value,
          min: 0,
          max: 100,
          divisions: 100,
          label: '\$$_value',
          onChanged: (nvalue) {
            widget.valueChanged(nvalue);
            setState(
                  () {
                 _value=nvalue;

              },
            );
          },
        ),
      ),
    );
  }
}
