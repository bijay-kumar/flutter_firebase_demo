import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  int id;
  int userId;
  String busId; //Combination of Bus Number and Bus Name, used for qr code genrator
  String source;
  String destination;
  double fair;
  double discount; //Percentage
  double totalFair; //After discount
  final DocumentReference reference;

  Book.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['id'] != null),
        assert(map['userId'] != null),
        assert(map['busId'] != null),
        assert(map['source'] != null),
        assert(map['destination'] != null),
        assert(map['fair'] != null),
        assert(map['discount'] != null),
        assert(map['totalFair'] != null),
        id = map['id'],
        userId = map['userId'],
        busId = map['busId'],
        source = map['source'],
        destination = map['destination'],
        fair = map['fair'],
        discount = map['discount'],
        totalFair = map['totalFair'];

  Book.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "User<$id:$userId:$busId>";
}