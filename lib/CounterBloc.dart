import 'package:rxdart/rxdart.dart';

class CounterBloc {
  int initialCount = 0;
  BehaviorSubject<int> _subjectCounter;

  CounterBloc(this.initialCount)
      : _subjectCounter = new BehaviorSubject<int>.seeded(0);

  Stream<int> get counterObservable => _subjectCounter.stream;

  void increase() {
    initialCount++;
    _subjectCounter.sink.add(initialCount);
  }

  void decrease() {
    initialCount--;
    _subjectCounter.sink.add(initialCount);
  }

  void dispose() {
    _subjectCounter.close();
  }
}
