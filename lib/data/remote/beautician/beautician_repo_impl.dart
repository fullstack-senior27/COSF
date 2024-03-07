import 'dart:developer';

import 'package:cosmetropolis/core/api_client.dart';
import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/beautician/add_client.dart';
import 'package:cosmetropolis/data/remote/beautician/add_client_photo.dart';
import 'package:cosmetropolis/data/remote/beautician/add_product.dart';
import 'package:cosmetropolis/data/remote/beautician/beautician_repo.dart';
import 'package:cosmetropolis/data/remote/beautician/block_client.dart';
import 'package:cosmetropolis/data/remote/beautician/create_note.dart';
import 'package:cosmetropolis/data/remote/beautician/create_service.dart';
import 'package:cosmetropolis/data/remote/beautician/create_service_category.dart';
import 'package:cosmetropolis/data/remote/beautician/delete_product.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_availability.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_client.dart';
import 'package:cosmetropolis/data/remote/beautician/get_all_clients.dart';
import 'package:cosmetropolis/data/remote/beautician/get_all_service_category_model.dart';
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
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:dartz/dartz.dart';

class BeauticianRepoImpl implements BeauticianRepo {
  final ApiClient _apiClient;

  BeauticianRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, BeauticianRegisterResponseModel>>
      beauticianRegister(
    BeauticianRegisterRequestModel beauticianRegisterRequestModel,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}auth/register/beautician",
        beauticianRegisterRequestModel.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianRegisterResponseModel.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianLoginResponseModel>> beauticianLogin(
    BeauticianLoginRequestModel beauticianRegisterRequestModel,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}auth/login/beautician",
        beauticianRegisterRequestModel.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianLoginResponseModel.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianProfileResponse>>
      getBeauticianProfileDetails(
    BeauticianProfileRequest beauticianProfileRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/profile",
        beauticianProfileRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianProfileResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianUpdateProfileResponse>>
      updateBeauticianProfile(
    BeauticianUpdateProfileRequest beauticianProfileRequest,
  ) async {
    try {
      final response = await _apiClient.patchWithToken(
        "${AppConstants.baseUrl}beautician/profile/edit",
        beauticianProfileRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianUpdateProfileResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianAvailabilityResponse>>
      updateBeauticianAvailability(
    BeauticianAvailabilityRequest beauticianAvailabilityRequest,
  ) async {
    try {
      final response = await _apiClient.patchWithToken(
        "${AppConstants.baseUrl}beautician/availability/add",
        beauticianAvailabilityRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianAvailabilityResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AddClientResponse>> addClient(
    AddClientRequest addClientRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/clients/new/add",
        addClientRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(AddClientResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreateServiceCategoryResponse>>
      createServiceCategory(
    CreateServiceCategoryRequest createServiceCategoryRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/service/category/create",
        createServiceCategoryRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(CreateServiceCategoryResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreateServiceResponse>> createService(
    CreateServiceRequest createServiceRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/service/create",
        createServiceRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(CreateServiceResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AddProductResponse>> addProduct(
    AddProductRequest addProductRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/products/create",
        addProductRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(AddProductResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetProductsResponse>> getProducts() async {
    try {
      final response = await _apiClient
          .getWithParams("${AppConstants.baseUrl}beautician/products", {
        "beauticianId":
            SharedPreferenceService.getString(AppConstants.userId) ?? "",
      });
      log("Sucess ====> $response");
      return Right(GetProductsResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteProductResponse>> deleteProduct(
    String id,
  ) async {
    try {
      final response = await _apiClient
          .delete("${AppConstants.baseUrl}beautician/products/delete/$id");
      log("Sucess ====> $response");
      return Right(DeleteProductResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateProductResponse>> updateProduct(
    String id,
    UpdateProductRequest updateProductRequest,
  ) async {
    try {
      final response = await _apiClient.patchWithToken(
        "${AppConstants.baseUrl}beautician/products/edit/$id",
        updateProductRequest.toJson(),
      );
      log("Sucess ====> $response");
      return Right(UpdateProductResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetAllClients>> getAllClients() async {
    try {
      final response = await _apiClient
          .getWithToken("${AppConstants.baseUrl}beautician/clients");
      log("Sucess ====> $response");
      return Right(GetAllClients.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetClientById>> getClientById(String id) async {
    try {
      final response = await _apiClient
          .getWithToken("${AppConstants.baseUrl}beautician/client/$id");
      log("Sucess ====> $response");
      return Right(GetClientById.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditClientResponse>> editClient(
    String clientId,
    EditClientRequest editClientRequest,
  ) async {
    try {
      final response = await _apiClient.patchWithTokenParams(
          "${AppConstants.baseUrl}beautician/clients/update",
          editClientRequest.toJson(),
          {"clientId": clientId},);
      log("Sucess ====> $response");
      return Right(EditClientResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditClientResponse>> deleteClient(
      String id,) async {
    try {
      final response = await _apiClient.delete(
          "${AppConstants.baseUrl}beautician/client/delete?clientId=$id",);
      log("Sucess ====> $response");
      return Right(EditClientResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreateNoteResponse>> createNote(
    CreateNoteRequest createNoteRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/notes/create",
        createNoteRequest.toJson(),
      );
      log("Sucess ====> $response");
      return Right(CreateNoteResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditClientResponse>> blockClient(
      BlockClientRequest editClientRequest,) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/client/block",
        editClientRequest.toJson(),
      );
      log("Sucess ====> $response");
      return Right(EditClientResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateSlotResponse>> updateSlot(
    UpdateSlotRequest updateSlotRequest,
  ) async {
    try {
      final response = await _apiClient.patchWithToken(
        "${AppConstants.baseUrl}beautician/availability/slots/add",
        updateSlotRequest.toJson(),
      );
      log("Sucess ====> $response");
      return Right(UpdateSlotResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, availability.BeauticianAvailabilityResponse>>
      getBeauticianAvailability(String id) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}beautician/availability/list?beauticianId=$id",
      );
      log("Sucess ====> $response");
      return Right(
          availability.BeauticianAvailabilityResponse.fromJson(response.data!),);
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AddPhotoResponse>> addClientPhoto(
    AddPhotoRequest addPhotoRequest,
    String id,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/clients/upload-image?clientId=$id",
        addPhotoRequest.toJson(),
      );
      log("Sucess ====> $response");
      return Right(AddPhotoResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianServicesResponse>>
      getBeauticianServices(
    BeauticianServicesRequest beauticianServicesRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}services",
        beauticianServicesRequest.toJson(),
      );
      log("Sucess ====> $response");
      return Right(BeauticianServicesResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreateAppointmentResponse>> createAppointment(
      CreateAppointmentRequest createAppointmentRequest,) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}beautician/appointments/create",
        createAppointmentRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(CreateAppointmentResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetAllUserAppointments>>
      getAllAppointments() async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}beautician/appointments/all",
      );
      log("Sucess ====> ${response.toString()}");
      return Right(GetAllUserAppointments.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetAllServiceCategoryResponseModel>> getAllServiceCategory() async {
    try {
      final response = await _apiClient
          .getWithToken("${AppConstants.baseUrl}services/categories/all");
      log("Sucess ====> $response");
      return Right(GetAllServiceCategoryResponseModel.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }
}
