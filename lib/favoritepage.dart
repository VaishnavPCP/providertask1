import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask1/providercls.dart';

class Favorite1 extends StatefulWidget {
  const Favorite1({Key? key}) : super(key: key);

  @override
  State<Favorite1> createState() => _Favorite1State();
}

class _Favorite1State extends State<Favorite1> {
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Providercl>(context);
    List cls2 = object.name;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "English words",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: cls2.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  cls2[index],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                trailing: IconButton(
                  onPressed: () {
                    object.addFav(cls2[index]);
                  },
                  icon: object.check(cls2[index])
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                ),
              );
            }),
      ),
    );
  }
}
