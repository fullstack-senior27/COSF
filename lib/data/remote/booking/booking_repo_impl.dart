import 'dart:developer';

import 'package:cosmetropolis/core/api_client.dart';
import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/booking/booking_repo.dart';
import 'package:cosmetropolis/data/remote/booking/models/create_appointment.dart';
import 'package:dartz/dartz.dart';

class BookingRepoImpl implements BookingRepo {
  final ApiClient _apiClient;

  BookingRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, CreateAppointmentResponse>> createAppointment(
      CreateAppointmentRequest createAppointmentRequest,) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}users/appointment/create",
        createAppointmentRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(CreateAppointmentResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }
}
