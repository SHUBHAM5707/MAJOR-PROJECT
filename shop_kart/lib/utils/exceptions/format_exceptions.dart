
class SkFormatException implements Exception{

  final String message;

  const SkFormatException([this.message = 'an unexpected format error occurred.please check input']);

  factory SkFormatException.formMessage(String message){
    return SkFormatException(message);
  }

  String get formattedMessage => message;

  factory SkFormatException.formCode(String code){
    switch (code) {
      case 'invalid-email-format':
        return const SkFormatException('The email address format is invalid. please enter a valid email.');
      case 'invalid-phone-number-format':
        return const SkFormatException('invalid phone number format,enter valid number');
      case 'invalid-date-format':
        return const SkFormatException('date format is incorrect,enter valid date');
      case 'invalid-url-format':
        return const SkFormatException('url format is incorrect,enter valid url');
      case 'invalid-credit-card-format':
        return const SkFormatException('the credit card format is invalid,please enter valid card detail');
      case 'invalid-numeric-format':
        return const SkFormatException('input should be a valid numeric format');

      default:
        return const SkFormatException();
      }
    }
  }