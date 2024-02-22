import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "dueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "completedOn" field.
  DateTime? _completedOn;
  DateTime? get completedOn => _completedOn;
  bool hasCompletedOn() => _completedOn != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _dueDate = snapshotData['dueDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _completedOn = snapshotData['completedOn'] as DateTime?;
    _imageUrl = snapshotData['image_url'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  DocumentReference? owner,
  DateTime? createdTime,
  String? name,
  String? description,
  DateTime? dueDate,
  String? status,
  DateTime? completedOn,
  String? imageUrl,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'createdTime': createdTime,
      'name': name,
      'description': description,
      'dueDate': dueDate,
      'status': status,
      'completedOn': completedOn,
      'image_url': imageUrl,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.owner == e2?.owner &&
        e1?.createdTime == e2?.createdTime &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.dueDate == e2?.dueDate &&
        e1?.status == e2?.status &&
        e1?.completedOn == e2?.completedOn &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.category == e2?.category;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.createdTime,
        e?.name,
        e?.description,
        e?.dueDate,
        e?.status,
        e?.completedOn,
        e?.imageUrl,
        e?.category
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
