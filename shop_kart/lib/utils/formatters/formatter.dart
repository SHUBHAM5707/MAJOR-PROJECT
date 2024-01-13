  import "package:intl/intl.dart";

class SkFormatter{
  static String formateDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-mmm-yyy').format(date);
  }

  static String formateCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatePhoneNumber(String phoneNumber){
    if (phoneNumber.length == 10){
      return'(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    }else if (phoneNumber.length == 11){
      return'(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }



  //not null tester
  static String internationalPhoneNumber(String phoneNumber){
    //Removing Any non digit character
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'/D'),'');

    //Extracting the Country code from the Digitonly
    String countryCode = ' +${digitsOnly.substring(0,2)}';
    digitsOnly = digitsOnly.substring(2);

    //Add th remaining digits with proper Formating
    final formattedNumber = StringBuffer();
    formattedNumber.write(' ($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength=3;
      }
      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
        }
        i= end ;
   }
   return phoneNumber;
  }
}