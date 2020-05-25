import 'package:flutter/material.dart';
import 'package:flutter_bcrypt/flutter_bcrypt.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'home_controller.dart';


class HomePage extends StatelessWidget {

  HomeController controller = new HomeController();
  String result;
  Widget _cryptButton() {

    return Observer(

        builder: (_){
          return Padding(
            padding: EdgeInsets.all(40),
            child: RaisedButton(
            color: Colors.blue,
              child: Text(
                "Crypt",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: (){
                Future<String> hash = FlutterBcrypt.hashPw(
                    password: controller.model.encrypt,
                    salt: controller.model.salt);
              hash.then((value) => controller.model.decrypt = value);
              }
          )
          );
        }
        );

  }
  Widget _textInput({String labelText, String hintText, void Function(String) onChanged }){
    return Observer(
      builder: (_){

        return Padding(
        padding: EdgeInsets.all(20),
            child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(),
           ),
          )
        );
      });
  }

  @override
  Widget build(BuildContext context) {

    Future<String> saltFuture = FlutterBcrypt.salt();
    saltFuture.then((value) => controller.model.salt = value);

    result = "";


    return Scaffold(
      appBar: AppBar(
        title: Text("BCrypt"),
      ),
      body: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text("Encrypt: "),
          Observer(
              builder: (_){
                return Text("${controller.model.encrypt}", textAlign: TextAlign.center,);

              }),
          Text("Salt:"),
          Observer(
              builder: (_){
                return Text(controller.model.salt);

              }),
          Text("Result"),
      Observer(
          builder: (_){return Text(controller.model.decrypt, textAlign: TextAlign.center,);}),
          _textInput(
              labelText: "Encrypt",
              hintText: controller.model.decrypt,
              onChanged: controller.model.setEncrypt,

          ),
          _textInput(
              labelText: "Decrypt",
              hintText: controller.model.encrypt,
              onChanged: controller.model.setDecrypt,
          ),

          _cryptButton(),





        ],
      ),)
    );

  }
}
