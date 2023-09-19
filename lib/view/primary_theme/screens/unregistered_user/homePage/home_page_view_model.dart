import 'dart:convert';
import 'dart:developer';

import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/salon/models/salon_model.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homePageViewModel = ChangeNotifierProvider((ref) => HomePageViewModel(ref: ref));

class HomePageViewModel extends BaseViewModel {
  Ref ref;
  HomePageViewModel({required this.ref});

  /// DATA MEMBERS
  List<Salon> _allSalons = [];  

  /// GETTERS
  List<Salon> get allSalons => _allSalons;  

  /// OTHER METHODS
  Future<void> fetchAllSalons() async {
    _allSalons.clear();

    Map<String, dynamic> requestModel = {
      "beautician": "",
      "service": "",
      "location": "",
      "date": "",
      "price": "",
      "sort_price": "",
      "service_type": "",
      "rating": ""
    };

    final Response response = await ApiClient().post(
      '${AppConstants.baseUrl}beautician/get-all-salon', 
      jsonEncode(requestModel)
    );
    
    SalonResponseModel salonResponseModel = SalonResponseModel.fromJson(response.data as Map<String, dynamic>);

    for(int i = 0; i < (salonResponseModel.data?.length ?? 0); i++) {
      _allSalons.add(salonResponseModel.data![i]);
    }
    notifyListeners();

    print("ALL SALONS =====>$_allSalons");
  }
}