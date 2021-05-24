// import 'dart:html';

import 'dart:convert';

import 'package:notebook/models/api_response.dart';
import 'package:notebook/models/note_for_listing.dart';
import 'package:http/http.dart' as http;

class NotesService {
  static const api = 'http://localhost/api-connection/api/add.php';
  static const headers = {'apiKey': 'daff2956-c7a2-4a9e-bdc9-9e3f482eb1b2'};

  Future<List<NoteForListing>> getNotesList() {
    return http.get(Uri.parse("$api/notebook"), headers: headers).then((data) {
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
      }
    });
  }
  // return APIResponse();
}
