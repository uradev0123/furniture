// ----------------------------------main.dart----------------------------------------

// import 'package:flutter/material.dart';
// import 'package:furniture_master/models/brand.dart';
// import 'package:furniture_master/models/designer.dart';
// import 'package:furniture_master/models/furniture.dart';
// import 'package:furniture_master/test.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) =>
//       MaterialApp(
//         theme: ThemeData(primarySwatch: Colors.blue),
//         home: _IconScreen(),
//       );
// }
//

//
//
// class _ListViewDividedByCountry extends StatelessWidget {
//   _ListViewDividedByCountry({super.key});
//
//   Widget _countryFurnitureList(String country, List<Designer> designers) {
//     // 国名のテキストを持ったウィジェットリストを生成
//     List<Widget> listTileList = [
//       Text(country,
//         style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
//       ),
//     ];
//     // デザイナーのリストタイルを追加する
//     listTileList.addAll(
//         designers.map((e) =>
//             ListTile(
//               title: Text(e.japaneseName),
//               subtitle: Text(e.period),
//               leading: SizedBox(
//                 width: 50,
//                 child: Image.asset('assets/images/designer/${e.imageURL}'),
//               ),
//               onTap: () {debugPrint(e.name);},
//             )).toList().cast<Widget>()  // List<ListTile> → List<Widget>
//     );
//
//     return Column(
//       children: listTileList,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) =>
//       Scaffold(
//         body: ListView.builder(
//           itemCount: 3,
//           itemBuilder: (context, index) =>
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8.0),
//                 child: _countryFurnitureList('country - $index', Samples.designers),
//               ),
//         ),
//       );
// }
//
// class _ListViewInColumnScreen extends StatelessWidget {
//   _ListViewInColumnScreen({super.key});
//
//   static String image = 'Hans J Wegner.jpg';
//
//   static Widget listViewInColumn() =>
//       Column(
//         children: [
//           _CardScreen.designerCard(Samples.designers[0]),
//           Expanded(
//             child: ListView.builder(
//               // shrinkWrap: true,
//               // physics: NeverScrollableScrollPhysics(),
//               itemCount: 10,
//               itemBuilder: (context, index) =>
//                   ListTile(
//                     title: Text('title$index'),
//                     subtitle: Text('sub$index'),
//                     leading: const Icon(Icons.memory),
//                     trailing: const Icon(Icons.note),
//                   ),
//             ),
//           ),
//           ElevatedButton(onPressed: (){}, child: const Text('button')),
//         ],
//       );
//
//   @override
//   Widget build(BuildContext context) =>
//       Scaffold(
//         body: listViewInColumn(),
//       );
//
// }
//
// class _StackScreen extends StatefulWidget {
//   const _StackScreen({super.key});
//
//   @override
//   State<_StackScreen> createState() => _StackScreenState();
// }
// class _StackScreenState extends State<_StackScreen> {
//   bool isVanishMemo = true;
//
//   Widget _stackMemo() =>
//       Center(
//         child: Container(
//           height: 500,
//           width: 300,
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 50,
//                 width: 300,
//                 alignment: Alignment.centerLeft,
//                 decoration: const BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.only(left: 30),
//                   child: Text('メモ',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: TextField(
//                   controller: TextEditingController(text: 'aaaaa'),  // ここにメモの値を入れる
//                   keyboardType: TextInputType.multiline,
//                   maxLines: 17,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     SizedBox(
//                       width: 110,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: const Text('キャンセル'),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 110,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: const Text('OK'),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
//
//   Widget _stackMemoOutside() =>
//       GestureDetector(
//
//         onTap: () {
//           setState(() {
//             isVanishMemo = true;
//           });
//         },
//         child: Container(
//           color: Colors.grey.withOpacity(0.5),
//         ),
//       );
//
//   @override
//   Widget build(BuildContext context) =>
//       Scaffold(
//         body: Center(
//           child: Stack(
//             children: [
//               ListView.builder(
//                   itemCount: 15,
//                   itemBuilder: (context, index) =>
//                       ListTile(
//                         title: Text('title$index'),
//                         subtitle: Text('subtitle$index'),
//                       )
//               ),
//               Offstage(
//                 offstage: isVanishMemo,
//                 child: _stackMemoOutside(),
//               ),
//               Offstage(
//                 offstage: isVanishMemo,
//                 child: _stackMemo(),
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               setState(() {
//                 isVanishMemo = false;
//               });
//             },
//             child: const Text('button')
//         ),
//       );
// }
//
// class _CardScreen extends StatelessWidget {
//   const _CardScreen({super.key});
//
//   static Widget designerCard(Designer d) =>
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Card(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SizedBox(height: 200, child: Image.asset('assets/images/designer/${d.imageURL}'),),
//               ),
//               Column(
//                 children: [
//                   Text(d.japaneseName, style: TextStyle(fontSize: 17),),
//                   Text(d.name, style: TextStyle(fontSize: 15),),
//                   Text('生没年： ${d.period}', style: TextStyle(fontSize: 15),),
//                   Text('出身地： ${d.country.name}', style: TextStyle(fontSize: 15),),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: ElevatedButton(onPressed: (){}, child: const Text('メモ')),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       );
//   Widget _brandCard(Brand b) =>
//       Card(
//         child: Column(
//           children: [
//             SizedBox(height: 100, width: 100, child: Image.asset('assets/images/brand/${b.imageURL}'),),
//             Text(b.japaneseName),
//             Text(b.name),
//             Text('設立年： ${b.period}'),
//             Text('本国： ${b.country.name}'),
//             ElevatedButton(onPressed: (){}, child: const Text('メモ')),
//           ],
//         ),
//       );
//   Widget _furnitureCard(Furniture f) =>
//       Card(
//         child: Column(
//           children: [
//             SizedBox(height: 100, width: 100, child: Image.asset('assets/images/furniture/${f.imageURL}'),),
//             Text(f.japaneseName),
//             Text(f.name),
//             Text('デザイナー： ${f.designer.japaneseName}'),
//             Text('ブランド： ${f.brand.japaneseName}'),
//             Text('誕生年： ${f.designedYear}'),
//             Text('種類： ${f.furnitureType.type}'),
//             ElevatedButton(onPressed: (){}, child: const Text('メモ')),
//           ],
//         ),
//       );
//
//   @override
//   Widget build(BuildContext context) =>
//       Scaffold(
//         body: ListView(
//           children: [
//             designerCard(Samples.designers[0]),
//             _brandCard(Samples.brands[0]),
//             _furnitureCard(Samples.furnitures[0]),
//           ],
//         ),
//       );
// }
//
// class _ListTileScreen extends StatelessWidget {
//   const _ListTileScreen({super.key});
//
//   Widget _furnitureTile(String image, String furniture, String designer, String brand) =>
//       ListTile(
//         title: Text(furniture),
//         subtitle: Text('$designer\n$brand'),
//         leading: SizedBox(height: 70, width: 70, child: Image.asset('assets/images/furniture/$image')),
//       );
//
//   Widget _designerTite(String image, String designer, String country) =>
//       ListTile(
//         title: Text(designer),
//         subtitle: Text(country),
//         leading: SizedBox(height: 70, width: 70, child: Image.asset('assets/images/designer/$image')),
//       );
//
//   Widget _brandTite(String image, String brand, String country) =>
//       ListTile(
//         title: Text(brand),
//         subtitle: Text(country),
//         leading: SizedBox(height: 70, width: 70, child: Image.asset('assets/images/brand/$image')),
//       );
//
//
//   @override
//   Widget build(BuildContext context) =>
//       Scaffold(
//         appBar: AppBar(title: const Text('ListTile'),),
//         body: ListView(
//           children: [
//             _furnitureTile('CH-24 Y Chair.jpg', 'Yチェア', 'ハンス・J・ウェグナー', 'カールハンセン&サン'),
//             _furnitureTile('PP503 The Chair.jpg', 'ザ・チェア', 'ハンス・J・ウェグナー', 'カールハンセン&サン'),
//             _furnitureTile('PP-550 Peacock-Chair.webp', 'ピーコックチェア', 'ハンス・J・ウェグナー', 'カールハンセン&サン'),
//             _designerTite('Hans J Wegner.jpg', 'ハンス・J・ウェグナー', 'デンマーク'),
//             _brandTite('CARL HANSEN & SON.png', 'カールハンセン&サン', 'デンマーク'),
//           ],
//         ),
//       );
// }


