class UserModel{

 final String email;
 final String name;
 final int phone_num;
 final int? birth_date;
 final String? id;

 UserModel({
    this.id,
    required this.email,
    required this.name,
    required this.phone_num,
    this.birth_date,

 });

 factory UserModel.fromJson(Map<String, dynamic> json){
   return UserModel(
       email: json["email"],
       name: json["name"],
       phone_num:json["phone_num"],
       id:json ["id"],
       birth_date: json["birth_date"]
   );
 }
 Map<String, dynamic> toJson() => {
   "id" :id,
   "email": email,
   "name": name,
   "birth_date": birth_date,
   "phone_num":phone_num,

 };

}