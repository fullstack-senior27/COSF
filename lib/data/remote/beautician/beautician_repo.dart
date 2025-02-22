import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/beautician/add_client.dart';
import 'package:cosmetropolis/data/remote/beautician/add_client_photo.dart';
import 'package:cosmetropolis/data/remote/beautician/add_product.dart';
import 'package:cosmetropolis/data/remote/beautician/block_client.dart';
import 'package:cosmetropolis/data/remote/beautician/create_note.dart';
import 'package:cosmetropolis/data/remote/beautician/create_service.dart';
import 'package:cosmetropolis/data/remote/beautician/create_service_category.dart';
import 'package:cosmetropolis/data/remote/beautician/delete_product.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_availability.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_client.dart';
import 'package:cosmetropolis/data/remote/beautician/get_all_clients.dart';
import 'package:cosmetropolis/data/remote/beautician/get_availability.dart'
    as availability;
import 'package:cosmetropolis/data/remote/beautician/get_beautician_services.dart';
import 'package:cosmetropolis/data/remote/beautician/get_client_by_id.dart';
import 'package:cosmetropolis/data/remote/beautician/get_products.dart';
import 'package:cosmetropolis/data/remote/beautician/get_profile_details.dart';
import 'package:cosmetropolis/data/remote/beautician/login.dart';
import 'package:cosmetropolis/data/remote/beautician/registration.dart';
import 'package:cosmetropolis/data/remote/beautician/update_product.dart';
import 'package:cosmetropolis/data/remote/beautician/update_profile_details.dart';
import 'package:cosmetropolis/data/remote/beautician/update_slot.dart';
import 'package:cosmetropolis/data/remote/booking/models/create_appointment.dart';
import 'package:cosmetropolis/data/remote/user/models/get_all_user_appointments.dart';
import 'package:dartz/dartz.dart';

abstract class BeauticianRepo {
  Future<Either<ApiException, BeauticianRegisterResponseModel>>
      beauticianRegister(
          BeauticianRegisterRequestModel beauticianRegisterRequestModel,);

  Future<Either<ApiException, BeauticianLoginResponseModel>> beauticianLogin(
      BeauticianLoginRequestModel beauticianRegisterRequestModel,);

  Future<Either<ApiException, BeauticianProfileResponse>>
      getBeauticianProfileDetails(
          BeauticianProfileRequest beauticianProfileRequest,);

  Future<Either<ApiException, BeauticianUpdateProfileResponse>>
      updateBeauticianProfile(
          BeauticianUpdateProfileRequest beauticianProfileRequest,);

  Future<Either<ApiException, BeauticianAvailabilityResponse>>
      updateBeauticianAvailability(
          BeauticianAvailabilityRequest beauticianAvailabilityRequest,);

  Future<Either<ApiException, AddClientResponse>> addClient(
      AddClientRequest addClientRequest,);

  Future<Either<ApiException, CreateServiceCategoryResponse>>
      createServiceCategory(
    CreateServiceCategoryRequest createServiceCategoryRequest,
  );

  Future<Either<ApiException, CreateServiceResponse>> createService(
    CreateServiceRequest createServiceRequest,
  );

  Future<Either<ApiException, AddProductResponse>> addProduct(
    AddProductRequest addProductRequest,
  );

  Future<Either<ApiException, GetProductsResponse>> getProducts();

  Future<Either<ApiException, DeleteProductResponse>> deleteProduct(String id);

  Future<Either<ApiException, UpdateProductResponse>> updateProduct(
      String id, UpdateProductRequest updateProductRequest,);

  Future<Either<ApiException, GetAllClients>> getAllClients();

  Future<Either<ApiException, GetClientById>> getClientById(String id);

  Future<Either<ApiException, EditClientResponse>> editClient(
      String clientId, EditClientRequest editClientRequest,);

  Future<Either<ApiException, EditClientResponse>> deleteClient(String id);

  Future<Either<ApiException, CreateNoteResponse>> createNote(
    CreateNoteRequest createNoteRequest,
  );

  Future<Either<ApiException, EditClientResponse>> blockClient(
      BlockClientRequest editClientRequest,);

  Future<Either<ApiException, UpdateSlotResponse>> updateSlot(
    UpdateSlotRequest updateSlotRequest,
  );

  Future<Either<ApiException, availability.BeauticianAvailabilityResponse>>
      getBeauticianAvailability(String id);

  Future<Either<ApiException, AddPhotoResponse>> addClientPhoto(
    AddPhotoRequest addPhotoRequest,
    String id,
  );
  Future<Either<ApiException, BeauticianServicesResponse>>
      getBeauticianServices(
    BeauticianServicesRequest beauticianServicesRequest,
  );

  Future<Either<ApiException, CreateAppointmentResponse>> createAppointment(
      CreateAppointmentRequest createAppointmentRequest,);

  Future<Either<ApiException, GetAllUserAppointments>> getAllAppointments();
}
