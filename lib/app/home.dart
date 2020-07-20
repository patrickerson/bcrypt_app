import 'package:flutter/material.dart';
import 'package:flutter_bcrypt/flutter_bcrypt.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'home_controller.dart';


class HomePage extends StatelessWidget {

  HomeController controller = new HomeController();
  String result;
  Widget _cryptButton({String text, void Function() onPressed}) {

    return Observer(

        builder: (_){
          return Padding(
            padding: EdgeInsets.all(5),
            child: RaisedButton(
            color: controller.model.color,
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: onPressed
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

    return Observer(
     builder: (_){return Scaffold(
      appBar: AppBar(
        title: Text("BCrypt"),
        backgroundColor: controller.model.color,
      ),

      body: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              hintText: controller.model.encrypt,
              onChanged: controller.model.setEncrypt,

          ),
          _textInput(
              labelText: "hash",
              hintText: controller.model.decrypt,
              onChanged: controller.model.setDecrypt,
          ),

          _cryptButton(
            text: "Crypt",
            onPressed: (){
              Future<String> hash = FlutterBcrypt.hashPw(
                  password: controller.model.encrypt,
                  salt: controller.model.salt);
              hash.then((value) => controller.model.decrypt = value);
              print(controller.model.decrypt);

            }
          ),

          _cryptButton(
            text: "verify",
            onPressed: (){
              Future<bool> verify = FlutterBcrypt.verify(
                  password: controller.model.encrypt, hash: controller.model.decrypt);


              verify.then((value){if(value){
                print("ok");
                controller.model.color = Colors.green;}
                else{print("failed"); controller.model.color = Colors.red;}
              });
            }
          )



        ],
      ),)
    );});

  }
}
