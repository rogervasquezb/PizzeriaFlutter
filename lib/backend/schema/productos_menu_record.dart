import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosMenuRecord extends FirestoreRecord {
  ProductosMenuRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "estatus" field.
  bool? _estatus;
  bool get estatus => _estatus ?? false;
  bool hasEstatus() => _estatus != null;

  // "id_categoria" field.
  DocumentReference? _idCategoria;
  DocumentReference? get idCategoria => _idCategoria;
  bool hasIdCategoria() => _idCategoria != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _estatus = snapshotData['estatus'] as bool?;
    _idCategoria = snapshotData['id_categoria'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos_menu');

  static Stream<ProductosMenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosMenuRecord.fromSnapshot(s));

  static Future<ProductosMenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosMenuRecord.fromSnapshot(s));

  static ProductosMenuRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosMenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosMenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosMenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosMenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosMenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosMenuRecordData({
  String? nombre,
  String? descripcion,
  double? precio,
  bool? estatus,
  DocumentReference? idCategoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio,
      'estatus': estatus,
      'id_categoria': idCategoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosMenuRecordDocumentEquality
    implements Equality<ProductosMenuRecord> {
  const ProductosMenuRecordDocumentEquality();

  @override
  bool equals(ProductosMenuRecord? e1, ProductosMenuRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.estatus == e2?.estatus &&
        e1?.idCategoria == e2?.idCategoria;
  }

  @override
  int hash(ProductosMenuRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.descripcion, e?.precio, e?.estatus, e?.idCategoria]);

  @override
  bool isValidKey(Object? o) => o is ProductosMenuRecord;
}
