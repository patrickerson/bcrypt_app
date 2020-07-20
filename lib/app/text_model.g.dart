// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TextModel on _TextModelBase, Store {
  final _$encryptAtom = Atom(name: '_TextModelBase.encrypt');

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

  final _$decryptAtom = Atom(name: '_TextModelBase.decrypt');

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

  final _$saltAtom = Atom(name: '_TextModelBase.salt');

  @override
  String get salt {
    _$saltAtom.reportRead();
    return super.salt;
  }

  @override
  set salt(String value) {
    _$saltAtom.reportWrite(value, super.salt, () {
      super.salt = value;
    });
  }

  final _$colorAtom = Atom(name: '_TextModelBase.color');

  @override
  Color get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  final _$_TextModelBaseActionController =
      ActionController(name: '_TextModelBase');

  @override
  void setEncrypt(String input) {
    final _$actionInfo = _$_TextModelBaseActionController.startAction(
        name: '_TextModelBase.setEncrypt');
    try {
      return super.setEncrypt(input);
    } finally {
      _$_TextModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDecrypt(String input) {
    final _$actionInfo = _$_TextModelBaseActionController.startAction(
        name: '_TextModelBase.setDecrypt');
    try {
      return super.setDecrypt(input);
    } finally {
      _$_TextModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSalt(String input) {
    final _$actionInfo = _$_TextModelBaseActionController.startAction(
        name: '_TextModelBase.setSalt');
    try {
      return super.setSalt(input);
    } finally {
      _$_TextModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setColor(Color nc) {
    final _$actionInfo = _$_TextModelBaseActionController.startAction(
        name: '_TextModelBase.setColor');
    try {
      return super.setColor(nc);
    } finally {
      _$_TextModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
encrypt: ${encrypt},
decrypt: ${decrypt},
salt: ${salt},
color: ${color}
    ''';
  }
}
