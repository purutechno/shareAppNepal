import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:nepalstock/utils/response.dart';
import 'package:rxdart/rxdart.dart';

class NavigationStateProvider extends ChangeNotifier {
  int bottomNavIndex = 0;
  int topNavIndex = 0;
  late BehaviorSubject<Response> _navWidgetController;

  NavigationStateProvider() {
    _navWidgetController = BehaviorSubject<Response>();
  }

  Stream<Response> get navWidgetStream => _navWidgetController.stream;

  updateBottomNavState(int index) {
    _navWidgetController.sink.add(Response.loading(""));
    if (bottomNavIndex != index) {
      _playNavSound();
    }
    this.bottomNavIndex = index;
    _navWidgetController.sink.add(Response.completed(index));
  }

  updateTopNavState(int index) {
    _navWidgetController.sink.add(Response.loading(""));
    if (topNavIndex != index) {
      _playNavSound();
    }
    this.topNavIndex = index;
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
