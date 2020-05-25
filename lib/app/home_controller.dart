
import 'package:bcrypt_app/app/text_model.dart';
import 'package:mobx/mobx.dart';


part 'home_controller.g.dart';


class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  TextModel model = TextModel();





}