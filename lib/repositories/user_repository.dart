import 'package:supabase_flutter/supabase_flutter.dart';

class UserRepository {
  Future<User> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final supabase = Supabase.instance.client;
      final response = await supabase.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw const AuthException('Failed to Sign Up"}');
      }
      return response.user!;
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException('Failed to Sign Up: $e');
    }
  }

  Future<User> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final supabase = Supabase.instance.client;
      final response = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw const AuthException('Failed to Sign In');
      }

      return response.user!;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    final supabase = Supabase.instance.client;
    await supabase.auth.signOut();
  }
}
