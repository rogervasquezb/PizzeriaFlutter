import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromocionesRecord extends FirestoreRecord {
  PromocionesRecord._(
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

  // "fecha_inicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "fecha_fin" field.
  DateTime? _fechaFin;
  DateTime? get fechaFin => _fechaFin;
  bool hasFechaFin() => _fechaFin != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _fechaInicio = snapshotData['fecha_inicio'] as DateTime?;
    _fechaFin = snapshotData['fecha_fin'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promociones');

  static Stream<PromocionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromocionesRecord.fromSnapshot(s));

  static Future<PromocionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromocionesRecord.fromSnapshot(s));

  static PromocionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromocionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromocionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromocionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromocionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromocionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromocionesRecordData({
  String? nombre,
  String? descripcion,
  double? precio,
  DateTime? fechaInicio,
  DateTime? fechaFin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio,
      'fecha_inicio': fechaInicio,
      'fecha_fin': fechaFin,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromocionesRecordDocumentEquality implements Equality<PromocionesRecord> {
  const PromocionesRecordDocumentEquality();

  @override
  bool equals(PromocionesRecord? e1, PromocionesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechaFin == e2?.fechaFin;
  }

  @override
  int hash(PromocionesRecord? e) => const ListEquality().hash(
      [e?.nombre, e?.descripcion, e?.precio, e?.fechaInicio, e?.fechaFin]);

  @override
  bool isValidKey(Object? o) => o is PromocionesRecord;
}
