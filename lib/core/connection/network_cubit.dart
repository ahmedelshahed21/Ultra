import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultra_app/core/connection/network_info.dart';

class NetworkCubit extends Cubit<NetworkState> {
  final NetworkInfo networkInfo;

  NetworkCubit(this.networkInfo) : super(NetworkInitial()) {
    _initializeConnection();
    _monitorConnection();
  }

  Future<void> _initializeConnection() async {
    try {
      final isConnected = await networkInfo.isConnected;
      if (isConnected) {
        emit(NetworkConnected());
      } else {
        emit(NetworkDisconnected());
      }
    } catch (error) {
      emit(NetworkDisconnected());
    }
  }

  void _monitorConnection() {
    networkInfo.connectionStatus.listen((status) {
      if (status == DataConnectionStatus.connected) {
        emit(NetworkConnected());
      } else {
        emit(NetworkDisconnected());
      }
    });
  }

  @override
  Future<void> close() {
    // Any cleanup logic (if needed) can be added here.
    return super.close();
  }
}

abstract class NetworkState {}

class NetworkInitial extends NetworkState {}

class NetworkConnected extends NetworkState {}

class NetworkDisconnected extends NetworkState {}
