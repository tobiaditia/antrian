import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthControllerController extends GetxController {
  var isAuth = false.obs;
  var isLoading = false.obs;

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? user;
  UserCredential? userCredential;

  Future<void> autoLogin() async {
    try {
      isLoading.value = true;
      final isSignin = await _googleSignIn.isSignedIn();
      if (isSignin) {
        await _googleSignIn.signIn().then((value) => user = value);
        isAuth.value = true;
      }
      isLoading.value = false;
    } catch (err) {
      isLoading.value = false;
    }
    update();
  }

  Future<void> login() async {
    try {
      isLoading.value = true;
      await _googleSignIn.signIn().then((value) => user = value);
      final isSignIn = await _googleSignIn.isSignedIn();

      if (isSignIn) {
        final googleAuth = await user!.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) => userCredential = value);

        isAuth.value = true;
      }

      isLoading.value = false;
    } catch (error) {
      isLoading.value = false;
    }
    update();
  }

  Future<void> logout() async {
    isLoading.value = true;
    await _googleSignIn.disconnect();
    await _googleSignIn.signOut();
    isAuth.value = false;
    isLoading.value = false;
    update();
  }

  @override
  void onClose() {}
}
