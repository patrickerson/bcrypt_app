// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$encryptAtom = Atom(name: '_HomeControllerBase.encrypt');

  @override
  String get encrypt {
    _$encryptAtom.reportRead();
    return super.encrypt;
  }

  @override
  set encrypt(String value) {
    _$encryptAtom.reportWrite(value, super.encrypt, () {
      super.encrypt = value;
    });
  }

  final _$decryptAtom = Atom(name: '_HomeControllerBase.decrypt');

  @override
  String get decrypt {
    _$decryptAtom.reportRead();
    return super.decrypt;
  }

  @override
  set decrypt(String value) {
    _$decryptAtom.reportWrite(value, super.decrypt, () {
      super.decrypt = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setEncrypt(String input) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setEncrypt');
    try {
      return super.setEncrypt(input);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDecrypt(String input) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setDecrypt');
    try {
      return super.setDecrypt(input);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
encrypt: ${encrypt},
decrypt: ${decrypt}
    ''';
  }
}
