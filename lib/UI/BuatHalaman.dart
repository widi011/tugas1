import 'package:flutter/material.dart';
// ignore: unused_import
import './Detailproduk.dart';

// ignore: camel_case_types
class BuatHalaman extends StatelessWidget {
  const BuatHalaman({superkey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      
      
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const Detailproduk(
                  name: "Aegis",
                  description: "Anti air",
                  price: 1000,
                  image: "aegis.jpg",
                  star: 1,
                ),
              ));
            },

            
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "AEGIS",
              description: "Anti air",
              price: 1000,
              image: "aegis.jpg",
              star: 1,
            ),
            
          ),
          
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Drag3",
                      description: " Produk voopo",
                      price: 800,
                      image: "drag3.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "Drag3",
                description: " Produk voopo",
                price: 800,
                image: "drag3.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Thelema",
                      description: "keluaran baru",
                      price: 2000,
                      image: "thelema.jpg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name: "Thelema",
                description: "keluaran baru",
                price: 2000,
                image: "thelema.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Oxva",
                      description:
                          "ok",
                      price: 1500,
                      image: "oxva.jpg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name: "Oxva",
                description:
                    "ok",
                price: 1500,
                image: "oxva.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Centaurus",
                      description: "baru",
                      price: 100,
                      image: "centaurus.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Centaurus",
                description: "baru",
                price: 100,
                image: "centaurus.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}


// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {superkey,
      required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}