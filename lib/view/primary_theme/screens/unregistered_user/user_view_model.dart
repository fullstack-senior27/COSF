import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/data/remote/booking/booking_repo.dart';
import 'package:cosmetropolis/data/remote/booking/models/create_appointment.dart';
import 'package:cosmetropolis/data/remote/public/models/beauticians_list_model.dart'
    as salon;
import 'package:cosmetropolis/data/remote/user/models/cards_list_model.dart';
import 'package:cosmetropolis/data/remote/user/models/create_card_model.dart';
import 'package:cosmetropolis/data/remote/user/models/edit_profile_user.dart';
import 'package:cosmetropolis/data/remote/user/models/get_all_user_appointments.dart';
import 'package:cosmetropolis/data/remote/user/models/profile_details_model.dart';
import 'package:cosmetropolis/data/remote/user/models/user_forgot_password.dart';
import 'package:cosmetropolis/data/remote/user/models/user_login_model.dart';
import 'package:cosmetropolis/data/remote/user/models/user_register_model.dart';
import 'package:cosmetropolis/data/remote/user/user_repo.dart';
import 'package:cosmetropolis/domain/providers/repository_provider.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/change_password_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheets_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final userViewModel = ChangeNotifierProvider(
  (ref) => UserViewModel(
    ref.read(userRepositoryProvider),
    ref.read(bookingRepositoryProvider),
  ),
);

class UserViewModel extends BaseViewModel<BaseScreenView> {
  final UserRepo _userRepository;
  final BookingRepo _bookingRepo;
  UserViewModel(this._userRepository, this._bookingRepo);

  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  String profilePic = '';
  String getProfilePic() {
    return profilePic;
  }

  void setProfilePic(String url) {
    profilePic = url;
    notifyListeners();
  }

  UserRegisterRequest registerRequest = const UserRegisterRequest();
  UserRegisterResponse? _registerResponse;
  UserRegisterResponse? get registerResponse => _registerResponse;

  UserLoginRequest loginRequest = const UserLoginRequest();
  UserLoginResponse? _loginResponse;
  UserLoginResponse? get loginResponse => _loginResponse;

  CardsListResponse? _cardsListResponse;
  CardsListResponse? get cardsListResponse => _cardsListResponse;

  GetAllUserAppointments? _allUserAppointments;
  GetAllUserAppointments? get allUserAppointments => _allUserAppointments;

  UserForgotPasswordResponse? _forgotPasswordResponse;
  UserForgotPasswordResponse? get forgotPasswordResponse =>
      _forgotPasswordResponse;

  ProfileDetailsResponse? _profileDetailsResponse;
  ProfileDetailsResponse? get profileDetailsResponse => _profileDetailsResponse;

  salon.Result? selectedSalon;
  salon.Result? get selectedSalonValue => selectedSalon;

  void setSelectedSalon(salon.Result? value) {
    selectedSalon = value;
    notifyListeners();
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  void setSelectedDate(DateTime? value) {
    _selectedDate = value;
    notifyListeners();
  }

  String _selectedSlot = "";
  String get selectedSlot => _selectedSlot;
  void setSelectedSlot(String value) {
    _selectedSlot = value;
    notifyListeners();
  }

  final List<salon.Service> _selectedService = [];
  List<salon.Service> get selectedService => _selectedService;
  void addService(salon.Service? value) {
    _selectedService.add(value!);
    notifyListeners();
  }

  void removeService(salon.Service? value) {
    _selectedService.remove(value);
    notifyListeners();
  }

  Future<void> register(
    UserRegisterRequest request,
    BuildContext context,
  ) async {
    toggleLoading();
    await _userRepository.registerUser(request).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _registerResponse = r;
              showSnackbar(r.message!);
              context.go('/login');
              notifyListeners();
            },
          ),
        );
  }

  Future<void> login(UserLoginRequest request, BuildContext context) async {
    toggleLoading();
    await _userRepository.loginUser(request).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _loginResponse = r;
              // showSnackbar(r.message!);

              SharedPreferenceService.setString(
                AppConstants.accessToken,
                loginResponse?.accessToken ?? "",
              );
              SharedPreferenceService.setString(
                AppConstants.userId,
                loginResponse?.data?.id ?? "",
              );
              context.go("/edit-profile");
              notifyListeners();
            },
          ),
        );
  }

  Future<void> forgotPassword(
    UserForgotPasswordRequest request,
    BuildContext context,
    String token,
  ) async {
    toggleLoading();
    await _userRepository.forgotPasswordUser(request, token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _forgotPasswordResponse = r;
              showSnackbar(r.message!);
              notifyListeners();
            },
          ),
        );
  }

  Future<void> getProfileDetails(String token) async {
    toggleLoading();
    await _userRepository.getUserProfileDetails(token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _profileDetailsResponse = r;
              // showSnackbar(r.message!);
              notifyListeners();
            },
          ),
        );
  }

  Future<void> validate(BuildContext context) async {
    toggleLoading();
    await _userRepository
        .getUserProfileDetails(
            SharedPreferenceService.getString(AppConstants.accessToken) ?? "",)
        .then(
          (value) => value.fold(
            (l) {
              // showSnackbar(l.message);
              showDialog(
                  context: context,
                  builder: (builder) => const AlertDialog(
                      scrollable: true, content: LoginDialog(),),);
            },
            (r) {
              // _profileDetailsResponse = r;
              showDialog(
                  context: context,
                  builder: (builder) => const AlertDialog(
                      scrollable: true, content: SelectDate(),),);
              // showSnackbar(r.message!);
              notifyListeners();
            },
          ),
        );
  }

  Future<void> updateUserProfileDetails(
    USerEditProfile editProfile,
    String token,
  ) async {
    toggleLoading();
    await _userRepository.updateUserProfileDetails(editProfile, token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              showSnackbar("Profile updated successfully");
              getProfileDetails(token);
              notifyListeners();
            },
          ),
        );
  }

  Future<void> addCard(CreateCardRequest addCardRequest, String token) async {
    toggleLoading();
    await _userRepository.addCard(addCardRequest, token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              showSnackbar(r.message!);
              getCardsList(token);
              notifyListeners();
            },
          ),
        );
  }

  Future<void> getCardsList(String token) async {
    toggleLoading();
    await _userRepository.getCardsList(token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            // showSnackbar(r.message!);
            _cardsListResponse = r;
            notifyListeners();
          }),
        );
  }

  Future<void> deleteCard(String token, String cardID) async {
    toggleLoading();
    await _userRepository.deleteCard(token, cardID).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              showSnackbar(r.message);
              getCardsList(token);
              notifyListeners();
            },
          ),
        );
  }

  Future<void> changePassword(
    ChangePasswordRequest request,
    String token,
  ) async {
    toggleLoading();
    await _userRepository.changePassword(request, token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              showSnackbar(r.message!);
              notifyListeners();
            },
          ),
        );
  }

  Future<void> getAllAppointments(String token) async {
    toggleLoading();
    await _userRepository.getAllAppointments(token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message!);
            _allUserAppointments = r;
            notifyListeners();
          }),
        );
  }

  Future<void> makeAppointment(
      CreateAppointmentRequest request, BuildContext context,) async {
    toggleLoading();
    await _bookingRepo.createAppointment(request).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
              _selectedService.clear();
              notifyListeners();
              context.pop();
            },
            (r) {
              showSnackbar(r.message!);
              _selectedService.clear();
              notifyListeners();
              context.pop();
            },
          ),
        );
  }
}
