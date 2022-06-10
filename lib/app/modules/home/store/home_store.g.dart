// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$logOutstateAtom =
      Atom(name: 'HomeStoreBase.logOutstate', context: context);

  @override
  bool get logOutstate {
    _$logOutstateAtom.reportRead();
    return super.logOutstate;
  }

  @override
  set logOutstate(bool value) {
    _$logOutstateAtom.reportWrite(value, super.logOutstate, () {
      super.logOutstate = value;
    });
  }

  late final _$getValidatorAtom =
      Atom(name: 'HomeStoreBase.getValidator', context: context);

  @override
  bool get getValidator {
    _$getValidatorAtom.reportRead();
    return super.getValidator;
  }

  @override
  set getValidator(bool value) {
    _$getValidatorAtom.reportWrite(value, super.getValidator, () {
      super.getValidator = value;
    });
  }

  late final _$usuariosListAtom =
      Atom(name: 'HomeStoreBase.usuariosList', context: context);

  @override
  List<UserModel> get usuariosList {
    _$usuariosListAtom.reportRead();
    return super.usuariosList;
  }

  @override
  set usuariosList(List<UserModel> value) {
    _$usuariosListAtom.reportWrite(value, super.usuariosList, () {
      super.usuariosList = value;
    });
  }

  late final _$getFuncionariosAsyncAction =
      AsyncAction('HomeStoreBase.getFuncionarios', context: context);

  @override
  Future<void> getFuncionarios() {
    return _$getFuncionariosAsyncAction.run(() => super.getFuncionarios());
  }

  late final _$sortFuncionariosAsyncAction =
      AsyncAction('HomeStoreBase.sortFuncionarios', context: context);

  @override
  Future<void> sortFuncionarios(String condicao) {
    return _$sortFuncionariosAsyncAction
        .run(() => super.sortFuncionarios(condicao));
  }

  late final _$logOutAsyncAction =
      AsyncAction('HomeStoreBase.logOut', context: context);

  @override
  Future<dynamic> logOut() {
    return _$logOutAsyncAction.run(() => super.logOut());
  }

  @override
  String toString() {
    return '''
logOutstate: ${logOutstate},
getValidator: ${getValidator},
usuariosList: ${usuariosList}
    ''';
  }
}
