import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'text_model.g.dart';


class TextModel = _TextModelBase with _$TextModel;

abstract class _TextModelBase with Store {

  @observable
  String encrypt = "";
  @action
  void setEncrypt( String input) => encrypt = input;


  @observable
  String decrypt = "";
  @action
  void setDecrypt(String input) => decrypt = input;

  @observable
  String salt = "";
  @action
  void setSalt(String input) => salt = input;

  @observable
  Color color = Colors.blue;
  @action
  void setColor(Color nc) => color = nc;
}