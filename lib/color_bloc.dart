// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent { event_green, event_red }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.red;

  ColorBloc(super.initialState);
  @override
  Color get initialState => Colors.red;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.event_red) ? Colors.red : Colors.green;
    yield _color;
    throw UnimplementedError();
  }
}
