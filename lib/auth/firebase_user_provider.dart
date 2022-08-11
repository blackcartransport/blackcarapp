import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BlackCarFirebaseUser {
  BlackCarFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BlackCarFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BlackCarFirebaseUser> blackCarFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BlackCarFirebaseUser>(
            (user) => currentUser = BlackCarFirebaseUser(user));
