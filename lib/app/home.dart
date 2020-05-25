import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'home_controller.dart';


class HomePage extends StatelessWidget {

  HomeController controller = new HomeController();

  Widget _cryptButton(){
    return Padding(
    padding: EdgeInsets.all(40),
        child: RaisedButton(
      onPressed: (){
        //TODO: cript
      },
      color: Colors.blue,
      child: Text("Crypt", style: TextStyle(color: Colors.white),),
    ));
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
      ));}
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BCrypt"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[

          _textInput(
              labelText: "Encrypt",
              hintText: controller.decrypt,
              onChanged: controller.setEncrypt,
          ),
          _textInput(
              labelText: "Decrypt",
              hintText: controller.encrypt,
              onChanged: controller.setDecrypt,
          ),

          _cryptButton()


        ],
      ),
    );

  }
}
