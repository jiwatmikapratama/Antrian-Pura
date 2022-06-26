// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ara/pages/beranda_login.dart';
import 'package:ara/firestore/datamanagement.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({Key? key}) : super(key: key);

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  final users = FirebaseAuth.instance;
  List riwayatList = [];

  
    final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference riwayat = firestore.collection('riwayat');
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xFF189AB4),
        title: Text(
          'Riwayat',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
          // Container(
          //   child: TextField(
          //     decoration: InputDecoration(
          //       prefixIcon: Icon(Icons.search),
          //       hintText: 'Search',
          //     ),
          //   ),
          // ),
      ),
    //     body: Container(
    //       color: Colors.white,
    //   width: double.infinity,
    //   height: double.infinity,
    //   child: Column(
    //     children: [
    //       Container(
    //         color: Color(0XFF05445E),
    //         height: 100,
    //         child: Row(
    //           children: [
    //             Container(
    //               margin: EdgeInsets.fromLTRB(10.0, 0, 100.0, 0),
    //               child: GestureDetector(
    //                 onTap: () => Navigator.push(
    //               context, MaterialPageRoute(builder: (context) => Beranda_login())),
    //                 child: Icon(
    //                 Icons.arrow_back,
    //                 size: 48,
    //                 color: Colors.white,
    //               ),
    //               )
                  
                  
    //             ),
    //             Container(
    //               child: Text("Riwayat",
    //                   style: TextStyle(
    //                       fontSize: 24,
    //                       fontWeight: FontWeight.w500,
    //                       color: Colors.white)),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         child: Container(
    //             child: SingleChildScrollView(
    //           child: Column(
    //             children: [
    //               Container(
    //                 width: double.infinity,
    //                 margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
    //                 height: 80.0,
    //                 child: Row(
    //                   children: [
    //                     Container(
    //                       width: 72.0,
    //                       height: 72.0,
    //                       margin: EdgeInsets.only(left: 5.0),
    //                       decoration: BoxDecoration(
    //                         shape: BoxShape.circle,
    //                         image: DecorationImage(
    //                           image: AssetImage("images/catur.jpg"),
    //                           fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     ),
    //                     Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Container(
    //                           margin: EdgeInsets.only(left: 15.0),
    //                           child: Text(
    //                             "Nama Pura",
    //                             style: TextStyle(fontSize: 24),
    //                           ),
    //                         ),
    //                         Container(
    //                           margin: EdgeInsets.only(left: 15.0),
    //                           child: Text(
    //                             "tanggal/bulan/tahun",
    //                             style: TextStyle(fontSize: 24),
    //                           ),
    //                         ),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //               Container(
    //                 width: double.infinity,
    //                 margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
    //                 height: 80.0,
    //                 child: Row(
    //                   children: [
    //                     Container(
    //                       width: 72.0,
    //                       height: 72.0,
    //                       margin: EdgeInsets.only(left: 5.0),
    //                       decoration: BoxDecoration(
    //                         shape: BoxShape.circle,
    //                         image: DecorationImage(
    //                           image: AssetImage("images/catur.jpg"),
    //                           fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     ),
    //                     Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Container(
    //                           margin: EdgeInsets.only(left: 15.0),
    //                           child: Text(
    //                             "Nama Pura",
    //                             style: TextStyle(fontSize: 24),
    //                           ),
    //                         ),
    //                         Container(
    //                           margin: EdgeInsets.only(left: 15.0),
    //                           child: Text(
    //                             "tanggal/bulan/tahun",
    //                             style: TextStyle(fontSize: 24),
    //                           ),
    //                         ),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //               Container(
    //                 width: double.infinity,
    //                 margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
    //                 height: 80.0,
    //                 child: Row(
    //                   children: [
    //                     Container(
    //                       width: 72.0,
    //                       height: 72.0,
    //                       margin: EdgeInsets.only(left: 5.0),
    //                       decoration: BoxDecoration(
    //                         shape: BoxShape.circle,
    //                         image: DecorationImage(
    //                           image: AssetImage("images/catur.jpg"),
    //                           fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     ),
    //                     Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Container(
    //                           margin: EdgeInsets.only(left: 15.0),
    //                           child: Text(
    //                             "Nama Pura",
    //                             style: TextStyle(fontSize: 24),
    //                           ),
    //                         ),
    //                         Container(
    //                           margin: EdgeInsets.only(left: 15.0),
    //                           child: Text(
    //                             "tanggal/bulan/tahun",
    //                             style: TextStyle(fontSize: 24),
    //                           ),
    //                         ),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //               Container(
    //                 width: double.infinity,
    //                 margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
    //                 height: 80.0,
    //                 child: Row(
    //                   children: [
    //                     Container(
    //                       width: 72.0,
    //                       height: 72.0,
    //                       margin: EdgeInsets.only(left: 5.0),
    //                       decoration: BoxDecoration(
    //                         shape: BoxShape.circle,
    //                         image: DecorationImage(
    //                           image: AssetImage("images/catur.jpg"),
    //                           fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     ),
    //                     Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Container(
    //                           margin: EdgeInsets.only(left: 15.0),
    //                           child: Text(
    //                             "Nama Pura",
    //                             style: TextStyle(fontSize: 24),
    //                           ),
    //                         ),
    //                         Container(
    //                           margin: EdgeInsets.only(left: 15.0),
    //                           child: Text(
    //                             "tanggal/bulan/tahun",
    //                             style: TextStyle(fontSize: 24),
    //                           ),
    //                         ),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         )),
    //       ),
    //     ],
    //   ),
    // ),
    body: Card(
        child: FutureBuilder(
        future: FireStoreDataBase().getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text(
              "LoadingS",
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
           riwayatList = snapshot.data as List;
            return buildItems(riwayatList);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      ),
      
    
      
    );
  }
  Widget buildItems(puraList) => ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: puraList.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 64,
                  maxHeight: 64,
                ),
                child: Image.network(riwayatList[index]['gambar'].toString()),
              ),
                title: Text(
                  riwayatList[index]["nama"],
                ),
                subtitle:  Text(riwayatList[index]["alamat"]),
                
              ),
              
            ],
          ),
        );
      });
}
