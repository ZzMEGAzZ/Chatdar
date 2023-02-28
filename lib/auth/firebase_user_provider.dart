import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ChatdarFirebaseUser {
  ChatdarFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ChatdarFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ChatdarFirebaseUser> chatdarFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ChatdarFirebaseUser>(
      (user) {
        currentUser = ChatdarFirebaseUser(user);
        return currentUser!;
      },
    );
