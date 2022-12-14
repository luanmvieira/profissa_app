// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistrationStore on _RegistrationStoreBase, Store {
  late final _$photoServiceControllerAtom = Atom(
      name: '_RegistrationStoreBase.photoServiceController', context: context);

  @override
  String get photoServiceController {
    _$photoServiceControllerAtom.reportRead();
    return super.photoServiceController;
  }

  @override
  set photoServiceController(String value) {
    _$photoServiceControllerAtom
        .reportWrite(value, super.photoServiceController, () {
      super.photoServiceController = value;
    });
  }

  late final _$imageAtom =
      Atom(name: '_RegistrationStoreBase.image', context: context);

  @override
  XFile? get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(XFile? value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  late final _$uploadingAtom =
      Atom(name: '_RegistrationStoreBase.uploading', context: context);

  @override
  bool get uploading {
    _$uploadingAtom.reportRead();
    return super.uploading;
  }

  @override
  set uploading(bool value) {
    _$uploadingAtom.reportWrite(value, super.uploading, () {
      super.uploading = value;
    });
  }

  late final _$usuarioAtom =
      Atom(name: '_RegistrationStoreBase.usuario', context: context);

  @override
  UserModel get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(UserModel value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  late final _$serviceAtom =
      Atom(name: '_RegistrationStoreBase.service', context: context);

  @override
  ServiceModel get service {
    _$serviceAtom.reportRead();
    return super.service;
  }

  @override
  set service(ServiceModel value) {
    _$serviceAtom.reportWrite(value, super.service, () {
      super.service = value;
    });
  }

  late final _$resultUsuarioAtom =
      Atom(name: '_RegistrationStoreBase.resultUsuario', context: context);

  @override
  bool get resultUsuario {
    _$resultUsuarioAtom.reportRead();
    return super.resultUsuario;
  }

  @override
  set resultUsuario(bool value) {
    _$resultUsuarioAtom.reportWrite(value, super.resultUsuario, () {
      super.resultUsuario = value;
    });
  }

  late final _$resulServiceAtom =
      Atom(name: '_RegistrationStoreBase.resulService', context: context);

  @override
  bool get resulService {
    _$resulServiceAtom.reportRead();
    return super.resulService;
  }

  @override
  set resulService(bool value) {
    _$resulServiceAtom.reportWrite(value, super.resulService, () {
      super.resulService = value;
    });
  }

  late final _$textResultAtom =
      Atom(name: '_RegistrationStoreBase.textResult', context: context);

  @override
  String get textResult {
    _$textResultAtom.reportRead();
    return super.textResult;
  }

  @override
  set textResult(String value) {
    _$textResultAtom.reportWrite(value, super.textResult, () {
      super.textResult = value;
    });
  }

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

  late final _$getImageAsyncAction =
      AsyncAction('_RegistrationStoreBase.getImage', context: context);

  @override
  Future<XFile?> getImage() {
    return _$getImageAsyncAction.run(() => super.getImage());
  }

  late final _$uploadAsyncAction =
      AsyncAction('_RegistrationStoreBase.upload', context: context);

  @override
  Future<UploadTask> upload(String path) {
    return _$uploadAsyncAction.run(() => super.upload(path));
  }

  late final _$pickAndUploadImageAsyncAction = AsyncAction(
      '_RegistrationStoreBase.pickAndUploadImage',
      context: context);

  @override
  Future pickAndUploadImage() {
    return _$pickAndUploadImageAsyncAction
        .run(() => super.pickAndUploadImage());
  }

  late final _$CadastrarUserAsyncAction =
      AsyncAction('_RegistrationStoreBase.CadastrarUser', context: context);

  @override
  Future CadastrarUser() {
    return _$CadastrarUserAsyncAction.run(() => super.CadastrarUser());
  }

  late final _$CadastrarServiceAsyncAction =
      AsyncAction('_RegistrationStoreBase.CadastrarService', context: context);

  @override
  Future CadastrarService() {
    return _$CadastrarServiceAsyncAction.run(() => super.CadastrarService());
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
photoServiceController: ${photoServiceController},
image: ${image},
uploading: ${uploading},
usuario: ${usuario},
service: ${service},
resultUsuario: ${resultUsuario},
resulService: ${resulService},
textResult: ${textResult},
isAthome: ${isAthome},
isNewAddress: ${isNewAddress},
typeOcupation: ${typeOcupation}
    ''';
  }
}
