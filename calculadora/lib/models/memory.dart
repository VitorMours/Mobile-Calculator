class Memory {
  String _value = "0";
  final List<double> _buffer = [0.0, 0.0];
  String operation = "";
  int _bufferIndex = 0;

  final List<String> operations = ['+', '-', '/', 'x', '%', '='];

  // Getters and Setters
  String get value {
    return _value;
  }

  void applyCommand(String command) {
    if (command == "AC") {
      _allClear();
    } else if (operations.contains(command)) {
      command == "=" ? generateResult() : calculate(command);
    } else {
      _addDigit(command);
    }
  }

  void _allClear() {
    _value = "0";
    _buffer.setAll(0, [0.0, 0.0]);
    operation = "";
    _bufferIndex = 0;
  }

  void _addDigit(String command) {
    // Única e exclusivamente voltada para focar na adição de elementos de
    // maneira correta dentro da nossa tela.

    if (_value.contains('.') && command == '.') {
      return;
    } else if (_value == '0' && command == ".") {
      _value += command;
    } else if (_value == '0' && command != ".") {
      _value = command;
    } else {
      _value += command;
    }
  }

  void calculate(String command) {
    // First, we need to verify if the buffer is already full, if so, we need
    // we need to execute the operation that already exists.

    if (_bufferIndex == 1) {
      _buffer[1] = double.parse(_value);
      String result = _computate(operation);
      _buffer[0] = double.parse(result);
      _buffer[1] = 0;
    } else {
      _buffer[0] = double.parse(_value);
      _bufferIndex = 1;
    }
    print(_buffer);
    operation = command;
    _value = "0";
  }

  String _computate(String command) {
    String result = switch (command) {
      "+" => (_buffer[0] + _buffer[1]).toString(),
      "-" => (_buffer[0] - _buffer[1]).toString(),
      "x" => (_buffer[0] * _buffer[1]).toString(),
      "/" => (_buffer[0] / _buffer[1]).toString(),
      "%" => (_buffer[0] % _buffer[1]).toString(),
      _ => _buffer[0].toString(),
    };

    return result;
  }

  void generateResult() {
    if (!(operation == "")) {
      calculate(operation);
      var result = (_buffer[0] == _buffer[0].toInt())
          ? _buffer[0].toInt().toString()
          : _buffer[0].toString();
      _value = result.toString();
      operation = "";
    }
  }
}
