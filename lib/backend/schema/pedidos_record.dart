import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "creacion" field.
  DateTime? _creacion;
  DateTime? get creacion => _creacion;
  bool hasCreacion() => _creacion != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "producto_nombre" field.
  DocumentReference? _productoNombre;
  DocumentReference? get productoNombre => _productoNombre;
  bool hasProductoNombre() => _productoNombre != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _user = snapshotData['user'] as DocumentReference?;
    _creacion = snapshotData['creacion'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
    _productoNombre = snapshotData['producto_nombre'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosRecordData({
  int? id,
  DocumentReference? user,
  DateTime? creacion,
  String? estado,
  DocumentReference? productoNombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'user': user,
      'creacion': creacion,
      'estado': estado,
      'producto_nombre': productoNombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.user == e2?.user &&
        e1?.creacion == e2?.creacion &&
        e1?.estado == e2?.estado &&
        e1?.productoNombre == e2?.productoNombre;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality()
      .hash([e?.id, e?.user, e?.creacion, e?.estado, e?.productoNombre]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}
