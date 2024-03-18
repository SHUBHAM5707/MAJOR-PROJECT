class SkFirebaseExceptions implements Exception{
  ///the error code associate with exception
  final String code;

  SkFirebaseExceptions(this.code);

  String get message{
    switch (code){
      case 'unknown':
        return 'an unknown server error occur,try again later';
      case 'invalid-custom-token':
        return 'custom token in-correct';
      case 'custom-token-mismatch':
        return 'too weak password,enter strong password';
      case 'user-disabled':
        return 'Account disabled,Please contact support to assistance';
      case 'user-not-found':
        return 'user not found,invalid detailed';
      case 'wrong-password':
        return 'Incorrect password,please check Password and try again ';
      case 'invalid-verification-code':
        return 'invalid verification code enter Valid code';
      case 'invalid-verification-id':
        return 'invalid verification id ';
      case'quota-exceeded':
        return 'Quota exceeded.please try again later';
      case 'email-already-exists':
        return 'email already exists,please use different email ';
      default:
        return 'unable to handle request';
    }
  }

}