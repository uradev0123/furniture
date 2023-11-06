import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:furniture/infrastructure/firebase/data_path.dart';


class FirestoreService {
  final db = FirebaseFirestore.instance;

  // 家具データをFurnitureクラスへ変換
  Future<Furniture> convertDataToFurniture(QueryDocumentSnapshot<Map<String, dynamic>> doc) async {

    final preFurniture = PreFurniture.fromJson(doc.data());

    // brandId → Brandクラス
    final brandDoc = await db.collection(Collection.brands).doc(preFurniture.brandId).get();
    final brand = Brand.fromJson(brandDoc.data()!);

    // designerId → Designerクラス
    final designerDoc = await db.collection(Collection.designers).doc(preFurniture.designerId).get();
    final designer = Designer.designerFromMap(designerDoc.data()!);

    // PreFurnitureクラス → Furnitureクラス
    final furniture = Furniture(
      enName: preFurniture.enName,
      jaName: preFurniture.jaName,
      designedYear: preFurniture.designedYear,
      type: preFurniture.type,
      designer: designer,
      brand: brand,
      imageUrl: preFurniture.imageUrl,
      memo: preFurniture.memo,
    );

    return furniture;
  }

  // 家具一覧を取得
  Future<List<Furniture>> readFurnitureList(DbQuery? query) async {
    debugPrint('enter readFurnitureList()');
    // DBから家具一覧のデータを取得
    QuerySnapshot<Map<String, dynamic>> snapshot;
    if(query == null){
      debugPrint('query is null');
      snapshot = await db.collection(Collection.furniture).get();
    } else {
      debugPrint('query is not null');
      snapshot = await db.collection(Collection.furniture)
        .where(query.property, isEqualTo: query.target).limit(query.limit).get();
    }

    // DBデータ → List<Furniture>
    List<Furniture> furnitureList = [];
    for(QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      final f = await convertDataToFurniture(doc);
      furnitureList.add(f);
    }

    debugPrint('leave readFurnitureList()');
    return furnitureList;
  }

  // デザイナー一覧を取得
  Future<List<Designer>> readDesignerList() async {
    final snapshot = await db.collection(Collection.designers).get();

    // DBデータ →　List<Designer>
    List<Designer> list = snapshot.docs.map(
            (doc) => Designer.designerFromMap(doc.data())).toList();

    return list;
  }

  // ブランド一覧を取得
  Future<List<Brand>> readBrandList() async {
    final snapshot = await db.collection(Collection.brands).get();

    // DBデータ →　List<Brand>
    List<Brand> list = snapshot.docs.map(
            (doc) => Brand.fromJson(doc.data())).toList();

    return list;
  }
  
  // デザイナーIDを検索
  Future<String> searchDesignerId(String jaName) async {
    final snapshot = await db.collection(Collection.designers)
        .where(DesignerProperty.jaName, isEqualTo: jaName).limit(1).get();
    final id = snapshot.docs.first.id;

    return id;
  }
  // ブランドIDを検索
  Future<String> searchBrandId(String jaName) async {
    final snapshot = await db.collection(Collection.brands)
        .where(DesignerProperty.jaName, isEqualTo: jaName).limit(1).get();
    final id = snapshot.docs.first.id;

    return id;
  }
}
























