import 'dart:convert';
import 'package:flutter/foundation.dart';

class ECGLog {
  int id;
  String sessionId;
  List<int> data;
  String leadsOn;

   ECGLog({
    @required this.sessionId,
    this.data, this.leadsOn,
    this.id
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'sessionId': sessionId,
      'data': data.toString(),
      'leadsOn':  leadsOn,
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  static ECGLog fromMap(Map<String, dynamic> map) {
    
    return ECGLog(
      id: map['id'],
      sessionId: map['sessionId'],
      data: utf8.encode(map['data']),
      leadsOn: map['leadsOn'],
    );
  }

}
