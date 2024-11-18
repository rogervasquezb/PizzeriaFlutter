import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuCategoriasRecord extends FirestoreRecord {
  MenuCategoriasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _img = snapshotData['img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu_categorias');

  static Stream<MenuCategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuCategoriasRecord.fromSnapshot(s));

  static Future<MenuCategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuCategoriasRecord.fromSnapshot(s));

  static MenuCategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuCategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuCategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuCategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuCategoriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuCategoriasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuCategoriasRecordData({
  String? nombre,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuCategoriasRecordDocumentEquality
    implements Equality<MenuCategoriasRecord> {
  const MenuCategoriasRecordDocumentEquality();

  @override
  bool equals(MenuCategoriasRecord? e1, MenuCategoriasRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.img == e2?.img;
  }

  @override
  int hash(MenuCategoriasRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.img]);

  @override
  bool isValidKey(Object? o) => o is MenuCategoriasRecord;
}
