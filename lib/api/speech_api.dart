import 'package:speech_to_text/speech_to_text.dart';

class SpeechApi {
  static final _speech = SpeechToText();

  static Future<bool> toggleRecording({
    required Function(String text) onResult,
  }) async {
    final isAvalaible = await _speech.initialize();
    if (isAvalaible) {
      _speech.listen(onResult: (value) => onResult(value.recognizedWords));
    }
    return isAvalaible;
  }
}
