import 'package:antrian/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthControllerController extends GetxController {
  RxBool isAuth = false.obs;
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? user;
  UserCredential? userCredential;

  Future<void> autoLogin() async {
    try {
      final isSignin = await _googleSignIn.isSignedIn();
      if (isSignin) {
        await _googleSignIn.signIn().then((value) => user = value);
        isAuth.value = true;
      }
    } catch (err) {
      print(err);
    }
  }

  Future<GoogleSignInAccount?> login() async {
    try {
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
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
    return null;
  }

  Future<void> logout() async {
    await _googleSignIn.disconnect();
    await _googleSignIn.signOut();
    isAuth.value = false;
    Get.offAllNamed(Routes.splash);
  }

  @override
  void onClose() {}
}
