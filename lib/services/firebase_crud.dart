import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Users');

class FirebaseCrud {
  // CREATE
  static Future<Response> addUser({
    required String nome,
    required String email,
    required String senha,
    required String telefone,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "nome": nome,
      "email": email,
      "senha": senha,
      "telefone": telefone,
    };

    var result = await documentReferencer.set(data).whenComplete(() {
      response.code = 200;
      response.message = "Usuário cadastrado com sucesso";
    }).catchError((error) {
      response.code = 500;
      response.message = "Erro ao cadastrar usuário";
    });

    return response;
  }

  // READ
  static Stream<QuerySnapshot> verUser() {
    CollectionReference notesItemCollection = _Collection;

    return notesItemCollection.snapshots();
  }

  // UPDATE
  static Future<Response> updateUser({
    required String nome,
    required String email,
    required String senha,
    required String telefone,
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "nome": nome,
      "email": email,
      "senha": senha,
      "telefone": telefone,
    };

    await documentReferencer.update(data).whenComplete(() {
      response.code = 200;
      response.message = "Usuário atualizado com sucesso";
    }).catchError((error) {
      response.code = 500;
      response.message = "Erro ao atualizar usuário";
    });

    return response;
  }

  // DELETE
  static Future<Response> deleteUser({
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc(docId);

    await documentReferencer.delete().whenComplete(() {
      response.code = 200;
      response.message = "Usuário deletado com sucesso";
    }).catchError((error) {
      response.code = 500;
      response.message = "Erro ao deletar usuário";
    });

    return response;
  }
}
