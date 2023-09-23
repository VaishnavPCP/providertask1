import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask1/favoritepage.dart';
import 'package:providertask1/providercls.dart';

class Provider01 extends StatefulWidget {
  const Provider01({Key? key}) : super(key: key);

  @override
  State<Provider01> createState() => _Provider01State();
}

class _Provider01State extends State<Provider01> {
  List cls = [
    "Time",
    "Year",
    "People",
    "Way",
    "Day",
    "Man",
    "Thing",
    "Women",
    "Life"
  ];
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Providercl>(context);
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
        child:
        ListView.builder(
            itemCount: cls.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  cls[index],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                trailing: IconButton(
                  onPressed: () {
                    object.addFav(cls[index]);
                  },
                  icon: object.check(cls[index])
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
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Favorite",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Favorite1()));
        },
      ),
    );
  }
}
