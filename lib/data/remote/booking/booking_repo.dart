import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/booking/models/create_appointment.dart';
import 'package:dartz/dartz.dart';

abstract class BookingRepo {
  Future<Either<ApiException, CreateAppointmentResponse>> createAppointment(
      CreateAppointmentRequest createAppointmentRequest,);
}
