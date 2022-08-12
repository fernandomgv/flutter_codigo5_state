import 'dart:async';

class _CounterService{

  int _counter = 0;
  StreamController<int> _streamController = StreamController.broadcast();
  Stream<int> get counterStream => _streamController.stream;

  addCounter(){
    _counter++;
    _streamController.add(_counter);
  }

  closeStream(){
    _streamController.close();
  }

}

final counterService = _CounterService();