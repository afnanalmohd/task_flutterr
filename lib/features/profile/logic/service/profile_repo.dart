
class ProfileService {
  // User? user = FirebaseInstance.firebaseAuth.currentUser;
  //
  // Future<String?> uploadImage({
  //   required pickedFile,
  //   required String? uid,
  // }) async {
  //   try {
  //     String imageUrl = '';
  //     if (pickedFile != null) {
  //       final ref =
  //       FirebaseInstance.firebaseStorage.ref().child('$uid.jpg');
  //       GetPlatform.isWeb
  //           ? await ref.putData(
  //         pickedFile,
  //         SettableMetadata(contentType: 'image/jpeg'),
  //       )
  //           : await ref.putFile(pickedFile);
  //       imageUrl = await ref.getDownloadURL();
  //     }
  //     return imageUrl;
  //   } on FirebaseException catch (e) {
  //     return throw e;
  //   }
  // }
  //
  // UserModel? getUserInfo(String uid) {
  //   try{
  //     final user = FirebaseInstance.firebaseAuth.currentUser;
  //     if (uid.isNotEmpty) {
  //       return UserModel(
  //         id: user?.uid,
  //         email: user?.email,
  //         displayName: user?.displayName,
  //         photoURL: user?.photoURL,
  //         phoneNumber: user?.phoneNumber,
  //       );
  //     }
  //   } on FirebaseException catch (e){
  //     print(e);
  //   }
  // }
  // Future<void> updateUserName({
  //   required String uid,
  //   required String userName,
  //   required Function() onDone,
  //   required Function(String? error) onError,
  // }) async {
  //   try{
  //     if (uid.isNotEmpty) {
  //       await user?.updateDisplayName(userName);
  //       onDone();
  //     }
  //   } on FirebaseException catch (e) {
  //     onError(e.message);
  //   }
  // }
  // Future<void> updateUserPhoto({
  //   required String uid,
  //   required pickedFile,
  //   required Function() onDone,
  //   required Function(String? error) onError,
  // }) async {
  //   try{
  //     if (uid.isNotEmpty && pickedFile != null) {
  //       String? image = await uploadImage(pickedFile: pickedFile, uid: uid);
  //       await user?.updatePhotoURL(image);
  //       onDone();
  //     }
  //   } on FirebaseException catch (e) {
  //     onError(e.message);
  //   }
  // }
  //
  // Future<void> changePassword({
  //   required String uid,
  //   required String newPassword,
  //   required Function() onDone,
  //   required Function(String e) onError,
  // }) async {
  //   try {
  //     await user?.updatePassword(newPassword);
  //     onDone();
  //   } on FirebaseAuthException catch (e) {
  //     print('object');
  //     onError(e.message.toString());
  //   }
  // }
  //
  // Future<void> signOut({
  //   required Function() onDone,
  //   required Function(String) onError,
  // }) async {
  //   try {
  //     await FirebaseInstance.firebaseAuth.signOut();
  //     onDone();
  //   } on FirebaseAuthException catch (e) {
  //     onError(e.message.toString());
  //   }
  // }
}
