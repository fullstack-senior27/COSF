import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/data/remote/beautician/add_client.dart';
import 'package:cosmetropolis/data/remote/beautician/add_product.dart';
import 'package:cosmetropolis/data/remote/beautician/beautician_repo.dart';
import 'package:cosmetropolis/data/remote/beautician/block_client.dart';
import 'package:cosmetropolis/data/remote/beautician/create_note.dart';
import 'package:cosmetropolis/data/remote/beautician/create_service.dart';
import 'package:cosmetropolis/data/remote/beautician/create_service_category.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_availability.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_client.dart';
import 'package:cosmetropolis/data/remote/beautician/get_all_clients.dart'
    as clients;
import 'package:cosmetropolis/data/remote/beautician/get_client_by_id.dart';
import 'package:cosmetropolis/data/remote/beautician/get_products.dart';
import 'package:cosmetropolis/data/remote/beautician/get_profile_details.dart';
import 'package:cosmetropolis/data/remote/beautician/login.dart';
import 'package:cosmetropolis/data/remote/beautician/registration.dart';
import 'package:cosmetropolis/data/remote/beautician/update_product.dart';
import 'package:cosmetropolis/data/remote/beautician/update_profile_details.dart';
import 'package:cosmetropolis/domain/providers/providers.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final beauticianViewModel = ChangeNotifierProvider(
  (ref) => BeauticianViewModel(
    ref.read(beauticianRepositoryProvider),
  ),
);

class BeauticianViewModel extends BaseViewModel<BaseScreenView> {
  final BeauticianRepo _beauticianRepo;
  BeauticianViewModel(this._beauticianRepo);

  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  BeauticianRegisterResponseModel? _beauticianRegisterResponseModel;
  BeauticianRegisterResponseModel? get beauticianRegisterResponseModel =>
      _beauticianRegisterResponseModel;

  BeauticianLoginResponseModel? _beauticianLoginResponseModel;
  BeauticianLoginResponseModel? get beauticianLoginResponseModel =>
      _beauticianLoginResponseModel;

  BeauticianProfileResponse? _beauticianProfileResponseModel;
  BeauticianProfileResponse? get beauticianProfileResponseModel =>
      _beauticianProfileResponseModel;

  GetProductsResponse? _getProductsResponseModel;
  GetProductsResponse? get getProductsResponseModel =>
      _getProductsResponseModel;

  clients.GetAllClients? _getAllClients;
  clients.GetAllClients? get allClients => _getAllClients;

  GetClientById? _getClientByIdResponseModel;
  GetClientById? get getClientByIdResponseModel => _getClientByIdResponseModel;

  Future<void> registerBeautician(
    BeauticianRegisterRequestModel beauticianRegisterRequestModel,
    BuildContext context,
  ) async {
    toggleLoading();
    await _beauticianRepo
        .beauticianRegister(beauticianRegisterRequestModel)
        .then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            // showSnackbar(r.message);
            _beauticianRegisterResponseModel = r;
            SharedPreferenceService.setString(
              AppConstants.accessToken,
              _beauticianRegisterResponseModel?.accessToken ?? "",
            );
            SharedPreferenceService.setString(
              AppConstants.userId,
              _beauticianLoginResponseModel?.data?.id ?? "",
            );
            context.go("/dashboard-login");
            notifyListeners();
          }),
        );
  }

  Future<void> loginBeautician(
    BeauticianLoginRequestModel beauticianRegisterRequestModel,
    BuildContext context,
  ) async {
    toggleLoading();
    await _beauticianRepo.beauticianLogin(beauticianRegisterRequestModel).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            // showSnackbar(r.message);
            _beauticianLoginResponseModel = r;
            SharedPreferenceService.setString(
              AppConstants.accessToken,
              _beauticianLoginResponseModel?.accessToken ?? "",
            );
            SharedPreferenceService.setString(
              AppConstants.userId,
              _beauticianLoginResponseModel?.data?.id ?? "",
            );
            context.go("/dashboard-login");
            notifyListeners();
          }),
        );
  }

  Future<void> getBeauticianProfileDetails(
    BeauticianProfileRequest beauticianProfileRequest,
    BuildContext context,
  ) async {
    toggleLoading();
    await _beauticianRepo
        .getBeauticianProfileDetails(
          beauticianProfileRequest,
        )
        .then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            // showSnackbar(r.message);
            _beauticianProfileResponseModel = r;
            notifyListeners();
          }),
        );
  }

  Future<void> updateBeauticianProfile(
    BeauticianUpdateProfileRequest beauticianProfileRequest,
    BuildContext context,
  ) async {
    toggleLoading();
    await _beauticianRepo
        .updateBeauticianProfile(beauticianProfileRequest)
        .then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
          }),
        );
  }

  Future<void> updateBeauticianAvailability(
    BeauticianAvailabilityRequest beauticianAvailabilityRequest,
    BuildContext context,
  ) async {
    toggleLoading();
    await _beauticianRepo
        .updateBeauticianAvailability(beauticianAvailabilityRequest)
        .then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
          }),
        );
  }

  Future<void> addNewClient(
    BuildContext context,
    AddClientRequest addClientRequest,
  ) async {
    toggleLoading();
    await _beauticianRepo.addClient(addClientRequest).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
            getAllClients(context);
          }),
        );
  }

  Future<void> addService(
    BuildContext context,
    CreateServiceRequest createServiceRequest,
  ) async {
    toggleLoading();
    await _beauticianRepo.createService(createServiceRequest).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
          }),
        );
  }

  Future<void> addServiceCategory(
    BuildContext context,
    CreateServiceCategoryRequest createServiceCategoryRequest,
  ) async {
    toggleLoading();
    await _beauticianRepo
        .createServiceCategory(createServiceCategoryRequest)
        .then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
          }),
        );
  }

  Future<void> addProduct(
    BuildContext context,
    AddProductRequest createServiceCategoryRequest,
  ) async {
    toggleLoading();
    await _beauticianRepo.addProduct(createServiceCategoryRequest).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
            getProduct(context);
            // notifyListeners();
          }),
        );
  }

  Future<void> getProduct(
    BuildContext context,
  ) async {
    toggleLoading();
    await _beauticianRepo.getProducts().then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            // showSnackbar(r.message ?? "");
            _getProductsResponseModel = r;
            notifyListeners();
          }),
        );
  }

  Future<void> deleteProduct(BuildContext context, String id) async {
    toggleLoading();
    await _beauticianRepo
        .deleteProduct(
          id,
        )
        .then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
            getProduct(context);
            // notifyListeners();
          }),
        );
  }

  Future<void> updateProduct(
    BuildContext context,
    UpdateProductRequest updateProductRequest,
    String id,
  ) async {
    toggleLoading();
    await _beauticianRepo.updateProduct(id, updateProductRequest).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
            getProduct(context);
            // notifyListeners();
          }),
        );
  }

  Future<void> getAllClients(
    BuildContext context,
  ) async {
    toggleLoading();
    await _beauticianRepo.getAllClients().then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            // showSnackbar(r.message ?? "");
            _getAllClients = r;
            notifyListeners();
          }),
        );
  }

  Future<void> getClientById(BuildContext context, String id) async {
    toggleLoading();
    await _beauticianRepo.getClientById(id).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            // showSnackbar(r.message ?? "");
            _getClientByIdResponseModel = r;
            notifyListeners();
          }),
        );
  }

  Future<void> editClient(
    BuildContext context,
    EditClientRequest editClientRequest,
    String id,
  ) async {
    toggleLoading();
    await _beauticianRepo.editClient(id, editClientRequest).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
            getClientById(context, id);
            getAllClients(context);
            // notifyListeners();
          }),
        );
  }

  Future<void> deleteClient(BuildContext context, String id) async {
    toggleLoading();
    await _beauticianRepo.deleteClient(id).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) async {
            await getAllClients(context);
            if (allClients?.data?.isNotEmpty ?? false) {
              await getClientById(
                  context, allClients?.data?[0].client?.id ?? "");
            }
            context.pop();
            showSnackbar(r.message ?? "");
          }),
        );
  }

  Future<void> createNote(
    BuildContext context,
    CreateNoteRequest createNoteRequest,
    String id,
  ) async {
    toggleLoading();
    await _beauticianRepo.createNote(createNoteRequest).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "");
            getClientById(context, id);
          }),
        );
  }

  Future<void> blockClient(BuildContext context, String id,
      BlockClientRequest blockClientRequest) async {
    toggleLoading();
    await _beauticianRepo.blockClient(blockClientRequest).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) async {
            await getAllClients(context);
            if (allClients?.data?.isNotEmpty ?? false) {
              await getClientById(
                  context, allClients?.data?[0].client?.id ?? "");
            }
            context.pop();
            showSnackbar(r.message ?? "");
          }),
        );
  }
}
