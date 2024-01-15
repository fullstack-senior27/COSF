import 'dart:convert';
import 'dart:developer';
import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/public/models/beauticians_list_model.dart';
import 'package:cosmetropolis/data/remote/public/public_repo_impl.dart';
import 'package:cosmetropolis/data/remote/salon/models/salon_model.dart'
    as salon;
import 'package:cosmetropolis/data/remote/salon/salon_repo_impl.dart';
import 'package:cosmetropolis/data/remote/services/models/beautician_detail_model.dart';
import 'package:cosmetropolis/data/remote/services/models/service_categories_model.dart';
import 'package:cosmetropolis/data/remote/services/models/service_types_model.dart';
import 'package:cosmetropolis/data/remote/services/models/services_model.dart';
import 'package:cosmetropolis/data/remote/services/services_repo_impl.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homePageViewModel =
    ChangeNotifierProvider((ref) => HomePageViewModel(ref: ref));

class HomePageViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  HomePageViewModel({required this.ref});

  final ServicesRepoImpl _servicesRepoImpl = ServicesRepoImpl();
  final SalonRepoImpl _salonRepoImpl = SalonRepoImpl();

  final PublicRepoImpl _publicRepoImpl = PublicRepoImpl(ApiClient());

  /// DATA MEMBERS
  List<salon.Salon> _allSalons = [];
  List<salon.Salon> _salons = [];
  ServicesResponseModel _services = const ServicesResponseModel();

  /// GETTERS
  List<salon.Salon> get allSalons => _allSalons;
  List<salon.Salon> get salons => _salons;
  ServicesResponseModel get services => _services;

  ServiceTypesList? _serviceTypesList;
  ServiceTypesList? get serviceTypesList => _serviceTypesList;

  ServiceCategoriesList? _serviceCategoriesList;
  ServiceCategoriesList? get serviceCategoriesList => _serviceCategoriesList;

  BeauticiansListResponse? _beauticiansListResponse;
  BeauticiansListResponse? get beauticiansListResponse =>
      _beauticiansListResponse;

  BeauticianDetailResponse? _beauticianDetailResponse;
  BeauticianDetailResponse? get beauticianDetailResponse =>
      _beauticianDetailResponse;
  TextEditingController searchController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  double priceRange = 2000;

  String category = "";
  int service = -1;
  int avgRating = -1;
  int sortPrice = -1;

  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  /// OTHER METHODS
  Future<void> fetchAllSalons(String searchText,
      {String price = "200",
      String sortPrice = "low",
      String serviceType = "",
      String rating = "1",}) async {
    toggleLoading();
    Map<String, dynamic> requestModel = {
      "search": searchText,
      "location": "",
      "date": "",
      "price": "1-$price",
      "sort_price": sortPrice,
      "service_type": serviceType,
      "rating": rating
    };
    print(requestModel);

    final Response response = await ApiClient().post(
        '${AppConstants.baseUrl}beautician/get-all-salon',
        jsonEncode(requestModel),);

    salon.SalonResponseModel salonResponseModel =
        salon.SalonResponseModel.fromJson(
            response.data as Map<String, dynamic>,);

    _allSalons.clear();
    _salons.clear();
    notifyListeners();
    for (int i = 0; i < (salonResponseModel.data?.length ?? 0); i++) {
      _allSalons.add(salonResponseModel.data![i]);
    }
    _salons = _allSalons;
    notifyListeners();

    toggleLoading();

    print("ALL SALONS LENGTH =====>${_allSalons.length}");
    print("ALL SALONS =====>$_allSalons");
  }

  void filterSearch(String text) {
    List<salon.Salon> filteredList = _allSalons
        .where((element) =>
            (element.name?.toLowerCase() ?? "").contains(text.toLowerCase()),)
        .toList();
    _salons = filteredList;
    notifyListeners();
  }

  void clearFilter() {
    _salons = _allSalons;
    notifyListeners();
  }

  Future<void> fetchAllServices() async {
    toggleLoading();
    _servicesRepoImpl.getAllServices().then((value) {
      toggleLoading();
      return value.fold((l) => Logger.printError(l.message), (r) {
        _services = r;
        Logger.printSuccess("Total services : ${r.data?.length ?? 0}");
        notifyListeners();
      });
    });
  }

  Future<void> getSalonById(String salonId) async {
    toggleLoading();
    _salonRepoImpl.getSalonById(salonId).then((value) {
      toggleLoading();
      return value.fold((l) => log(l.message), (r) {
        _allSalons = [r];
        _salons = _allSalons;
        notifyListeners();
      });
    });
  }

  Future<void> getServiceCategories() async {
    toggleLoading();
    await _publicRepoImpl
        .getServiceCategories()
        .then((value) => value.fold((l) {
              showSnackbar(l.message);
            }, (r) {
              _serviceCategoriesList = r;
              notifyListeners();
            }),);
  }

  Future<void> getServiceTypes() async {
    toggleLoading();
    await _publicRepoImpl.getServiceTypes().then((value) => value.fold((l) {
          showSnackbar(l.message);
        }, (r) {
          _serviceTypesList = r;
          notifyListeners();
        }),);
  }

  Future<void> getBeauticiansByFilter(BeauticiansFilterRequest request) async {
    toggleLoading();
    await _servicesRepoImpl
        .getBeauticiansByFilter(request)
        .then((value) => value.fold((l) {
              showSnackbar(l.message);
            }, (r) {
              _beauticiansListResponse = r;
              notifyListeners();
            }),);
  }

  Future<void> getBeauticianDetails(BeauticianDetailRequest request) async {
    toggleLoading();
    await _servicesRepoImpl.getBeauticianDetails(request).then((value) {
      toggleLoading();
      return value.fold((l) => showSnackbar(l.message), (r) {
        _beauticianDetailResponse = r;
        notifyListeners();
      });
    });
  }
}
