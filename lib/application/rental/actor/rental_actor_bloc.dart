import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/domain/body_spec/model/age.dart';
import 'package:snowrun_app/domain/body_spec/model/body_spec.dart';
import 'package:snowrun_app/domain/contact/model/contact.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/rental/model/rental.dart';
import 'package:snowrun_app/domain/rental/model/rental_return_type.dart';
import 'package:snowrun_app/domain/rental_shop_product/rental_shop_product.dart';
import 'package:snowrun_app/domain/user/model/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rental_actor_event.dart';

part 'rental_actor_state.dart';

part 'rental_actor_bloc.freezed.dart';

@injectable
class RentalActorBloc extends Bloc<RentalActorEvent, RentalActorState> {
  RentalActorBloc() : super(RentalActorState.initial()) {
    on<_Init>((event, emit) async {
      bool validPeriod = isValidPeriod(
          event.rental.startAt, event.rental.endAt);
      bool validName = isValidName(event.rental.name.getOrCrash());
      bool validContact = _isValidPhoneNumber(
          event.rental.contact?.phoneNumber.getOrCrash()) ||
          _isValidEmail(event.rental.contact?.email.getOrCrash());
      bool validGender = event.rental.gender != null;
      bool validAge = event.rental.age != null;
      bool validBodySpec = event.rental.bodySpec != null;


      bool isValid = validName &&
          validContact &&
          validPeriod &&
          validAge &&
          validGender &&
          validBodySpec;

      emit(state.copyWith(
        status: RentalActorStatus.edit,
        updatedAt: DateTime.now(),
        rental: event.rental,
        isValidPeriod: validPeriod,
        isValidName: validName,
        isValidContact: validContact,
        isValidGender: validGender,
        isValidAge: validAge,
        isValidBodySpec: validBodySpec,
        isValidRentalInfo: isValid,
      ));
    });

    on<_SetName>((event, emit) async {
      final updatedRentalItem =
          state.rental.copyWith(name: StringVO(event.name));
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidName: isValidName(event.name),
      ));
    });

    on<_SetPhoneNumber>((event, emit) async {
      Contact contact = state.rental.contact ?? Contact.empty();
      final updatedRentalItem = state.rental.copyWith(
          contact: contact.copyWith(phoneNumber: StringVO(event.phoneNumber)));
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidContact: _isValidPhoneNumber(event.phoneNumber),
      ));
    });

    on<_SetCountryCode>((event, emit) async {
      Contact contact = state.rental.contact ?? Contact.empty();
      final updatedRentalItem = state.rental.copyWith(
          contact: contact.copyWith(
              countryCode: StringVO(event.countryCode.dialCode ?? "")));
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
      ));
    });

    on<_SetEmail>((event, emit) async {
      Contact contact = state.rental.contact ?? Contact.empty();
      final updatedRentalItem = state.rental.copyWith(
          contact: contact.copyWith(
        email: StringVO(event.email),
      ));
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidContact: _isValidEmail(event.email),
      ));
    });

    on<_SetGender>((event, emit) async {
      final updatedRentalItem = state.rental.copyWith(gender: event.gender);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidGender: state.rental.gender != null,
      ));
    });

    on<_SetAge>((event, emit) async {
      final updatedRentalItem = state.rental.copyWith(age: event.age);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidAge: state.rental.age != null,
      ));
    });

    on<_SetBodySpec>((event, emit) async {
      final updatedRentalItem = state.rental.copyWith(bodySpec: event.bodySpec);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidBodySpec: event.bodySpec != null,
      ));
    });

    on<_SetStartAt>((event, emit) async {
      final updatedRentalItem = state.rental.copyWith(startAt: event.startAt);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidPeriod: isValidPeriod(
            event.startAt, state.rental.endAt),
      ));
    });

    on<_SetEndAt>((event, emit) async {
      final updatedRentalItem = state.rental.copyWith(endAt: event.endAt);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidPeriod: isValidPeriod(
            state.rental.startAt, event.endAt),
      ));
    });

    on<_SetReturnType>((event, emit) async {
      final updatedRentalItem =
          state.rental.copyWith(returnType: event.rentalReturnType);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidPeriod: isValidPeriod(
            state.rental.startAt, state.rental.endAt),
      ));
    });

    on<_SetMainEquipment>((event, emit) async {
      final updatedRentalItem = state.rental.copyWith(
          mainEquipmentsRentalProduct: event.selectedRentalShopProduct);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: event.selectedRentalShopProduct.productOptions.getOrCrash().isNotEmpty ? RentalActorStatus.completedMainEquipment : RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidPeriod: isValidPeriod(
            state.rental.startAt, state.rental.endAt),
      ));
    });

    on<_SetApparelEquipment>((event, emit) async {
      final updatedRentalItem = state.rental.copyWith(
          apparelEquipmentsRentalProduct: event.selectedRentalShopProduct);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: event.selectedRentalShopProduct.productOptions.getOrCrash().isNotEmpty ? RentalActorStatus.completedApparelEquipment : RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidPeriod: isValidPeriod(
            state.rental.startAt, state.rental.endAt),
      ));
    });

    on<_SetAccessoryEquipment>((event, emit) async {
      final updatedRentalItem = state.rental.copyWith(
          accessoryEquipmentsRentalProduct: event.selectedRentalShopProduct);
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: event.selectedRentalShopProduct.productOptions.getOrCrash().isNotEmpty ? RentalActorStatus.completedAccessoryEquipment : RentalActorStatus.progress,
        rental: updatedRentalItem,
        isValidRentalInfo: _isValidRental(),
        isValidPeriod: isValidPeriod(
            state.rental.startAt, state.rental.endAt),
      ));
    });
  }

  bool _isValidRental() {
    return state.isValidName &&
        state.isValidContact &&
        state.isValidPeriod &&
        state.isValidAge &&
        state.isValidGender &&
        state.isValidBodySpec;
  }

  bool isValidPeriod(
      DateTime? startAt, DateTime? endAt) {
    return startAt != null &&
        endAt != null &&
        endAt.compareTo(startAt) > 0;
  }

  bool isValidName(String name) {
    return name.isNotEmpty;
  }
  

  bool _isValidEmail(String? email) {
    if (email == null) {
      return false;
    }

    String pattern = r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  bool _isValidPhoneNumber(String? phoneNumber) {
    if (phoneNumber == null) {
      return false;
    }
    return phoneNumber.length >= 10 && phoneNumber.length <= 15;
  }
}
