import 'dart:async';

class Debouncer {
  final int milliseconds;
  Function? action;
  Timer? _timer;
  Completer<void>? _completer;

  Debouncer({required this.milliseconds});

  Future<void> run(Function action) {
    if (_timer != null) {
      _timer!.cancel();
    }

    if (_completer != null && !_completer!.isCompleted) {
      _completer!.complete();
    }

    _completer = Completer<void>();

    _timer = Timer(Duration(milliseconds: milliseconds), () async {
      await action();
      _completer!.complete();
    });

    return _completer!.future;
  }
}
