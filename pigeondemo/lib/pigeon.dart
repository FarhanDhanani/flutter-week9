// Autogenerated from Pigeon (v0.1.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import
import 'dart:async';
import 'package:flutter/services.dart';

class SearchReply {
  String result;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['result'] = result;
    return pigeonMap;
  }
  // ignore: unused_element
  static SearchReply _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final SearchReply result = SearchReply();
    result.result = pigeonMap['result'];
    return result;
  }
}

class SearchRequest {
  String query;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['query'] = query;
    return pigeonMap;
  }
  // ignore: unused_element
  static SearchRequest _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final SearchRequest result = SearchRequest();
    result.query = pigeonMap['query'];
    return result;
  }
}

class Api {
  Future<SearchReply> search(SearchRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel =
        BasicMessageChannel<dynamic>('dev.flutter.pigeon.Api.search', StandardMessageCodec());
    
    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      return SearchReply._fromMap(replyMap['result']);
    }
    
  }
}

