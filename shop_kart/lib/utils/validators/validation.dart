class SkValidator{
  static String? validateEmail(String? value){
    if (value == null || value.isEmpty){
      return 'Email is require';
    }

    //regular expiration for email
    final emailRegExp = RegExp(r'^[\w-\.]+@([w-]+\.)+[\w-]{2,4}-$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if (value == null || value.isEmpty){
      return 'password is required';
    }

    if (value.length < 6){
      return 'password must have 6 character';
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'password must contain atleat one Uppercase character';
    }

    if(!value.contains(RegExp(r'[0-9]'))){
      return 'password must contain atleat one number';
    }

    if(!value.contains(RegExp(r'[!@#%^&*(),.?{}|<>]'))){
      return 'password must contain atleat one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'phone number is requied';
    }
     final phoneRegExp = RegExp(r'^\d{10}$');

     if (!phoneRegExp.hasMatch(value)){
      return 'invalid phone number';
     }

     return null;
  }
}