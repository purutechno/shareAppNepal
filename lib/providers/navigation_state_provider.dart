import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:nepalstock/utils/response.dart';
import 'package:rxdart/rxdart.dart';

class NavigationStateProvider extends ChangeNotifier {
  int index = 0;
  late BehaviorSubject<Response> _navWidgetController;

  NavigationStateProvider() {
    _navWidgetController = BehaviorSubject<Response>();
  }

  Stream<Response> get navWidgetStream => _navWidgetController.stream;

  updateNavState(int index) {
    _navWidgetController.sink.add(Response.loading(""));
    this.index = index;
    _playNavSound();
    _navWidgetController.sink.add(Response.completed(index));
  }

  _playNavSound() async {
    await AudioCache().play('audio/tap_sound.wav');
  }

  @override
  void dispose() {
    _navWidgetController.close();
    // TODO: implement dispose
    super.dispose();
  }
}
