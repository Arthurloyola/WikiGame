import 'package:rxdart/rxdart.dart';
import 'package:wikigame/model/game_response.dart';
import 'package:wikigame/repository/repository.dart';

class GetSliderBloc {
  final GameRepository _repository = GameRepository();
  final BehaviorSubject<GameResponse> _subject =
      BehaviorSubject<GameResponse>();

  getSlider() async {
    GameResponse response = await _repository.getSlider();
    _subject.sink.add(response);
  }

  disposed() {
    _subject.close();
  }

  BehaviorSubject<GameResponse> get subject => _subject;
}

final getSliderBloc = GetSliderBloc();
