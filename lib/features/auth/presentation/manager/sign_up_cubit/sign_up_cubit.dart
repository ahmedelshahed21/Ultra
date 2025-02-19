import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultra_app/features/auth/data/models/auth_success_model.dart';
import 'package:ultra_app/features/auth/data/models/sign_up_failure_model.dart';
import 'package:ultra_app/features/auth/data/repos/sign_up_repo/sign_up_repo.dart';
import 'package:ultra_app/features/auth/presentation/manager/sign_up_cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;

  SignUpCubit({required this.signUpRepo}) : super(SignUpInitial());

  Future<void> signUp({
    required String fullName,
    required String phone,
    required String phoneCode,
    required String email,
    required String password,
    required int userType,
  }) async {
    emit(SignUpLoading());

    final Either<SignUpFailureModel, AuthSuccessModel> result = await signUpRepo.signUp(
      fullName: fullName,
      phone: phone,
      phoneCode: phoneCode,
      email: email,
      password: password,
      userType: userType,
    );

    result.fold(
          (failure) => emit(SignUpFailure(failure)),
          (success) => emit(SignUpSuccess(success)),
    );
  }
}
