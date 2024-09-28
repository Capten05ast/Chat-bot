import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsMessagesRecord extends FirestoreRecord {
  ChatsMessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "user" field.
  List<DocumentReference>? _user;
  List<DocumentReference> get user => _user ?? const [];
  bool hasUser() => _user != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _image = snapshotData['image'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _user = getDataList(snapshotData['user']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats_messages');

  static Stream<ChatsMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsMessagesRecord.fromSnapshot(s));

  static Future<ChatsMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsMessagesRecord.fromSnapshot(s));

  static ChatsMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatsMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsMessagesRecordData({
  String? text,
  String? image,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'image': image,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsMessagesRecordDocumentEquality
    implements Equality<ChatsMessagesRecord> {
  const ChatsMessagesRecordDocumentEquality();

  @override
  bool equals(ChatsMessagesRecord? e1, ChatsMessagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.text == e2?.text &&
        e1?.image == e2?.image &&
        e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.user, e2?.user);
  }

  @override
  int hash(ChatsMessagesRecord? e) =>
      const ListEquality().hash([e?.text, e?.image, e?.timestamp, e?.user]);

  @override
  bool isValidKey(Object? o) => o is ChatsMessagesRecord;
}
