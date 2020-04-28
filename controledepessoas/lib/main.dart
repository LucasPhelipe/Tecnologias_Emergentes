import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){

  runApp(
    MaterialApp(
      title: "Controle de Pessoas",
      home: Home(),

    ),
  );

}

class Home extends StatefulWidget{
  @override
 _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  int _qtdePessoas = 0;

  void _changeQtdePessoas (int variante){

    setState(() {
      _qtdePessoas += variante;
    });
    if ( _qtdePessoas < 5) 
        {
          _changeQtdePessoas (1);
        }
        else
        child: Text ("Não é possível entrar!",style: TextStyle(fontSize: 35.0, color: Colors.white ));
  }

  @override
  Widget build(BuildContext context){
    return (      Stack (
        children: <Widget>[ Image.asset("images/fundo_supermercado.jpg", fit:BoxFit.cover, height: 1000.0,),

Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text ("Pessoas: $_qtdePessoas", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Padding(
                padding: EdgeInsets.all(10.2),
                child:
            FlatButton(child: Text ("+1", style: TextStyle(fontSize: 35.0, color: Colors.white )), onPressed: () { _changeQtdePessoas(1);},),
             
              ),
            ],
          ),
            Padding(
              padding: EdgeInsets.all(10.2),
              child: FlatButton(child: Text ("-1", style: TextStyle(fontSize: 35.0, color: Colors.white )), onPressed: () {_changeQtdePessoas(-1);},)),
        ],   
      ),
        ],
      ));
  }
}