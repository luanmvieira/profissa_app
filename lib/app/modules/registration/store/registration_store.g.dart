// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistrationStore on _RegistrationStoreBase, Store {
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
  Future retornarInfosCep(String cep) {
    return _$retornarInfosCepAsyncAction.run(() => super.retornarInfosCep(cep));
  }

  @override
  String toString() {
    return '''
typeOcupation: ${typeOcupation}
    ''';
  }
}
