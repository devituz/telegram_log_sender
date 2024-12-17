import 'package:dio/dio.dart';

class TelegramLogSender {
  final String botToken;
  final String chatId;

  TelegramLogSender({required this.botToken, required this.chatId});

  Future<void> sendMessage(String message) async {
    final String url = 'https://api.telegram.org/bot$botToken/sendMessage';

    try {
      await Dio().post(
        url,
        data: {
          'chat_id': chatId,
          'text': message,
        },
      );
      print('Xatolik haqida xabar Telegramga yuborildi.');
    } catch (e) {
      print('Telegramga xabar yuborishda xato: $e');
    }
  }
}
