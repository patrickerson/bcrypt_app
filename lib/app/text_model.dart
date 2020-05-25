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
}