import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultra_app/features/auth/data/models/auth_failure_model.dart';
import 'package:ultra_app/features/auth/data/models/auth_success_model.dart';
import 'package:ultra_app/features/auth/data/repos/sign_in_repo/sign_in_repo.dart';
import 'package:ultra_app/features/auth/presentation/manager/sign_in_cubit/sign_in_state.dart';


class SignInCubit extends Cubit<SignInState> {
  final SignInRepo signInRepo;

  SignInCubit({required this.signInRepo}) : super(SignInInitial());

  Future<void> signIn({required String phone, required String password}) async {
    emit(SignInLoading());

    final Either<AuthFailureModel, AuthSuccessModel> result =
    await signInRepo.signIn(phone: phone, password: password);

    result.fold(
          (failure) => emit(SignInFailure(failure.messages)),
          (success) => emit(SignInSuccess(success)),
    );
  }
}
