import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final int id;
  final String userType;
  final String fullName;
  final String email;
  final int phoneNo;
  final String password;
  final DocumentReference reference;

  User.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['id'] != null),
        assert(map['userType'] != null),
        assert(map['fullName'] != null),
        assert(map['email'] != null),
        assert(map['phoneNo'] != null),
        assert(map['password'] != null),
        id = map['id'],
        userType = map['userType'],
        fullName = map['fullName'],
        email = map['email'],
        phoneNo = map['phoneNo'],
        password = map['password'];

  User.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "User<$id:$fullName>";
}
