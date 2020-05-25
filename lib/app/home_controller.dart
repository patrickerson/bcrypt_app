import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';


class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  @observable
  String encrypt = "";
  @action
  void setEncrypt( String input) => encrypt = input;


  @observable
  String decrypt = "";
  @action
  void setDecrypt(String input) => decrypt = input;

}