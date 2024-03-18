class SkPlatformExceptions implements Exception {
  ///the error code associated with the exception
  final String code;

  SkPlatformExceptions(this.code);

  String get message {
    switch (code) {

      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credential , please check your entered details';
      case 'too-many-requests':
        return 'Too many request.please try later';
      case 'invalid-argument':
        return 'invalid argument provided to the authentication methods';
      case 'invalid-password':
        return 'Incorrect password .please try again later';
      case 'invalid-phone-number':
        return 'The provide number is invalid';
      case 'operation-not-allowed':
        return 'the sign-in provider is disabled for your project';
      case 'session-cookie-expired':
        return 'the session cookie has expired.please sign in again';
      case 'uid-already-exists':
        return 'user id already in use by another user';
      case 'sing_in_failed':
        return 'Sign-in failed,try again later';
      case 'network-request-failed':
        return 'network request failed.please check your internet';
      default:
        return 'unable to handle request';
    }
  }
}