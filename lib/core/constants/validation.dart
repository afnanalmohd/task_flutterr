class Validation{
  
  static const String validationEmail =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
 
  static const String validationName = r'^[a-z A-Z]+$';
 
  static const String validationText = r'^[a-z A-Z 0-9]+$';
 
  static const String validationWebsite = r"^[a-z A-Z 0-9.!#$%&'*+-/=?^_`{|}~]";
 
  static const String validationOptional = "";
 
  static const String validationPassword =
      r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$";
 
  static const String validationPhoneNumber = r'(?:\+?0*?966)?0?(5[0-9]{8})';
 
  static const String validationNumber = r'^(-?)(0|([1-9][0-9]*))(\.[0-9]+)?$';
  
}