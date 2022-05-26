// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistrationStore on _RegistrationStoreBase, Store {
  late final _$isAthomeAtom =
      Atom(name: '_RegistrationStoreBase.isAthome', context: context);

  @override
  bool get isAthome {
    _$isAthomeAtom.reportRead();
    return super.isAthome;
  }

  @override
  set isAthome(bool value) {
    _$isAthomeAtom.reportWrite(value, super.isAthome, () {
      super.isAthome = value;
    });
  }

  late final _$isNewAddressAtom =
      Atom(name: '_RegistrationStoreBase.isNewAddress', context: context);

  @override
  bool get isNewAddress {
    _$isNewAddressAtom.reportRead();
    return super.isNewAddress;
  }

  @override
  set isNewAddress(bool value) {
    _$isNewAddressAtom.reportWrite(value, super.isNewAddress, () {
      super.isNewAddress = value;
    });
  }

  late final _$typeOcupationAtom =
      Atom(name: '_RegistrationStoreBase.typeOcupation', context: context);

  @override
  List<String> get typeOcupation {
    _$typeOcupationAtom.reportRead();
    return super.typeOcupation;
  }

  @override
  set typeOcupation(List<String> value) {
    _$typeOcupationAtom.reportWrite(value, super.typeOcupation, () {
      super.typeOcupation = value;
    });
  }

  late final _$retornarInfosCepAsyncAction =
      AsyncAction('_RegistrationStoreBase.retornarInfosCep', context: context);

  @override
  Future retornarInfosCep(String cep, String page) {
    return _$retornarInfosCepAsyncAction
        .run(() => super.retornarInfosCep(cep, page));
  }

  late final _$_RegistrationStoreBaseActionController =
      ActionController(name: '_RegistrationStoreBase', context: context);

  @override
  dynamic setOcupation(String ocupation) {
    final _$actionInfo = _$_RegistrationStoreBaseActionController.startAction(
        name: '_RegistrationStoreBase.setOcupation');
    try {
      return super.setOcupation(ocupation);
    } finally {
      _$_RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setExperience(String experience) {
    final _$actionInfo = _$_RegistrationStoreBaseActionController.startAction(
        name: '_RegistrationStoreBase.setExperience');
    try {
      return super.setExperience(experience);
    } finally {
      _$_RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setService(String service) {
    final _$actionInfo = _$_RegistrationStoreBaseActionController.startAction(
        name: '_RegistrationStoreBase.setService');
    try {
      return super.setService(service);
    } finally {
      _$_RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeService(bool value) {
    final _$actionInfo = _$_RegistrationStoreBaseActionController.startAction(
        name: '_RegistrationStoreBase.changeService');
    try {
      return super.changeService(value);
    } finally {
      _$_RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeServiceLocal(bool value) {
    final _$actionInfo = _$_RegistrationStoreBaseActionController.startAction(
        name: '_RegistrationStoreBase.changeServiceLocal');
    try {
      return super.changeServiceLocal(value);
    } finally {
      _$_RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isAthome: ${isAthome},
isNewAddress: ${isNewAddress},
typeOcupation: ${typeOcupation}
    ''';
  }
}
