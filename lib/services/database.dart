import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/models/contatos.dart';
import 'package:flutter_app/models/user.dart';
class DatabaseService {
  
  final String uid;
  DatabaseService({ this.uid });
  
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('contatos');

  Future<void> updateUserData(String nome, int contact) async{
    return await userCollection.doc(uid).set({
      'nome': nome,
      'contact': contact,
      
    });
  }
  List<Contato> _userListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.docs.map((doc){
      return Contato(
       nome: doc.data()['nome'] ?? '',
        contact: doc.data()['contact'] ?? 0,
      );
    }).toList();
  }
  Stream<QuerySnapshot> get contatos {
    return userCollection.snapshots();
     // .map(_userListFromSnapshot);
  }

}