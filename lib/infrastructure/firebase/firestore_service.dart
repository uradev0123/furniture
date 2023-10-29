import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:furniture/infrastructure/firebase/data_path.dart';


class FirestoreService {
  final db = FirebaseFirestore.instance;
  
  Future<void> read() async {
    final doc = await db.collection(Collection.songs).doc('S07').get();

    final song = doc.data().toString();
    debugPrint(song);
  }

  Future<void> update() async {
    await db.collection(Collection.songs).doc('S09').update(
      {
        'genre': 'コック',
      }
    );
  }


  // 家具1つを取得
  Future<Furniture> readFurniture(QueryDocumentSnapshot<Map<String, dynamic>> doc) async {
    // DBから家具一覧のデータを取得
    // final doc = await db.collection(Collection.furniture).doc('F0001').get();
    // debugPrint('Debug1\n$doc');

    final preFurniture = PreFurniture.fromJson(doc.data());
    // debugPrint('Debug2\n$preFurniture');

    // brandId → Brandクラス
    final brandDoc = await db.collection(Collection.brands).doc(preFurniture.brandId).get();
    final brand = Brand.fromJson(brandDoc.data()!);
    // debugPrint('Debug4\n$brand');

    // designerId → Designerクラス
    final designerDoc = await db.collection(Collection.designers).doc(preFurniture.designerId).get();
    final designer = designerFromMap(designerDoc.data()!);
    // debugPrint('Debug3\n$designer');

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

    // debugPrint('Debug5\n$furniture');
    return furniture;
  }

  // 家具一覧を取得
  Future<List<Furniture>> readFurnitureList() async {
    // DBから家具一覧のデータを取得
    final snapshot = await db.collection(Collection.furniture).get();
    // debugPrint('Debug1\n$snapshot');

    // DBデータ → List<Furniture>
    List<Furniture> furnitureList = [];
    snapshot.docs.forEach( // forEachではなくmapの方がきれいだが、戻り値の型がList<Future<Furniture>>になるので使えなかった
        (doc) async {
          final f = await readFurniture(doc);
          furnitureList.add(f);
        }
    );

    return furnitureList;
  }

  Designer designerFromMap(Map<String, dynamic> map) {
    String enName = map["enName"];
    String jaName = map["jaName"];
    String country = map["country"];
    String culture = map["culture"];
    DateTime birthday = map["birthday"].toDate();
    DateTime deathday = map["deathday"].toDate();
    String faceUrl = map["faceUrl"];
    String memo = map["memo"];

    return Designer(
        enName: enName,
        jaName: jaName,
        country: country,
        culture: culture,
        birthday: birthday,
        deathday: deathday,
        faceUrl: faceUrl,
        memo: memo,
    );
  }
}
























