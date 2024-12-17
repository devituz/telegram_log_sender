import 'package:flutter_test/flutter_test.dart';
import 'package:telegram_log_sender/telegram_log_sender.dart';

void main() {
  test('sendMessage sends message to Telegram', () async {
    final telegram = TelegramLogSender(
      botToken: '',
      chatId: '',
    );

    await telegram.sendMessage('Test message');
  });
}
