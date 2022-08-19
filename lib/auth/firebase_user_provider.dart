import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BlackCarTransportFirebaseUser {
  BlackCarTransportFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BlackCarTransportFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BlackCarTransportFirebaseUser> blackCarTransportFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BlackCarTransportFirebaseUser>(
            (user) => currentUser = BlackCarTransportFirebaseUser(user));
