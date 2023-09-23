import 'package:flutter/material.dart';
class Providercl extends ChangeNotifier{

  List Favname=[];
  List get name=>Favname;

  void addFav(String txt){
    final Fav=Favname.contains(txt);
    if(Fav){
      Favname.remove(txt);
    }else{
      Favname.add(txt);
    }
    notifyListeners();
  }//notify its listeners


  bool check(String txt){
    final Fav2=Favname.contains(txt);
    return Fav2;
  }
}
