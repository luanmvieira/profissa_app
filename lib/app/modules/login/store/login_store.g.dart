// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
  late final _$usuarioAtom =
      Atom(name: '_LoginStoreBase.usuario', context: context);

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

  late final _$usuarioLoginAtom =
      Atom(name: '_LoginStoreBase.usuarioLogin', context: context);

  @override
  UserModel get usuarioLogin {
    _$usuarioLoginAtom.reportRead();
    return super.usuarioLogin;
  }

  @override
  set usuarioLogin(UserModel value) {
    _$usuarioLoginAtom.reportWrite(value, super.usuarioLogin, () {
      super.usuarioLogin = value;
    });
  }

  late final _$textResultAtom =
      Atom(name: '_LoginStoreBase.textResult', context: context);

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

  late final _$RealizarLoginAsyncAction =
      AsyncAction('_LoginStoreBase.RealizarLogin', context: context);

  @override
  Future<dynamic> RealizarLogin() {
    return _$RealizarLoginAsyncAction.run(() => super.RealizarLogin());
  }

  late final _$VerificarUserLogadoAsyncAction =
      AsyncAction('_LoginStoreBase.VerificarUserLogado', context: context);

  @override
  Future<dynamic> VerificarUserLogado() {
    return _$VerificarUserLogadoAsyncAction
        .run(() => super.VerificarUserLogado());
  }

  late final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase', context: context);

  @override
  bool validatePasswordField(String password) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.validatePasswordField');
    try {
      return super.validatePasswordField(password);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usuario: ${usuario},
usuarioLogin: ${usuarioLogin},
textResult: ${textResult}
    ''';
  }
}
