import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:more_app/domain/entities/user.dart';

part 'auth_viewmodel.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authenticated(User user) = AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  const factory AuthState.error(String message) = AuthError;
}

class AuthViewModel extends StateNotifier<AuthState> {
  AuthViewModel() : super(const AuthState.initial());

  Future<void> login({required String email, required String password}) async {
    state = const AuthState.loading();
    try {
      // TODO: AuthRepository를 통한 로그인 구현
      state = const AuthState.unauthenticated();
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> logout() async {
    state = const AuthState.loading();
    try {
      // TODO: AuthRepository를 통한 로그아웃 구현
      state = const AuthState.unauthenticated();
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }
}

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, AuthState>((ref) {
      return AuthViewModel();
    });
