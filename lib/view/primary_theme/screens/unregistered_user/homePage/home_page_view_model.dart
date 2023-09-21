import 'dart:convert';
import 'dart:developer';
import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/salon/models/salon_model.dart' as salon;
import 'package:cosmetropolis/data/remote/salon/salon_repo_impl.dart';
import 'package:cosmetropolis/data/remote/services/models/services_model.dart';
import 'package:cosmetropolis/data/remote/services/services_repo_impl.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homePageViewModel = ChangeNotifierProvider((ref) => HomePageViewModel(ref: ref));

class HomePageViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  HomePageViewModel({required this.ref});

  ServicesRepoImpl _servicesRepoImpl = ServicesRepoImpl();
  SalonRepoImpl _salonRepoImpl = SalonRepoImpl();
  TextEditingController searchController = TextEditingController();

  /// DATA MEMBERS
  List<salon.Salon> _allSalons = [];
  List<salon.Salon> _salons = [];
  ServicesResponseModel _services = ServicesResponseModel();

  /// GETTERS
  List<salon.Salon> get allSalons => _allSalons;
  List<salon.Salon> get salons => _salons;
  ServicesResponseModel get services => _services;

  /// OTHER METHODS
  Future<void> fetchAllSalons(String searchText, {String price = "200", String sortPrice = "low", String serviceType = "", String rating = "1"}) async {
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
      jsonEncode(requestModel)
    );
    
    salon.SalonResponseModel salonResponseModel = salon.SalonResponseModel.fromJson(response.data as Map<String, dynamic>);

    _allSalons.clear();
    _salons.clear();
    notifyListeners();
    for(int i = 0; i < (salonResponseModel.data?.length ?? 0); i++) {
      _allSalons.add(salonResponseModel.data![i]);
    }
    _salons = _allSalons;
    notifyListeners();

    toggleLoading();

    print("ALL SALONS LENGTH =====>${_allSalons.length}");
    print("ALL SALONS =====>$_allSalons");
  }



  void filterSearch(String text) {
    List<salon.Salon> filteredList = _allSalons.where((element) => (element.name?.toLowerCase() ?? "").contains(text.toLowerCase())).toList();
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
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _services = r;
          Logger.printSuccess("Total services : ${r.data?.length ?? 0}");
          notifyListeners();
        }
      );
    });
  }


  Future<void> getSalonById(String salonId) async {
    toggleLoading();
    _salonRepoImpl.getSalonById(salonId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => log(l.message), 
        (r) {
          _allSalons = [r];
          _salons = _allSalons;
          notifyListeners();
        }
      );
    });
  } 
}