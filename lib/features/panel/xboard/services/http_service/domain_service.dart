// services/domain_service.dart
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class DomainService {
  static const String ossDomain = 'https://dopsvfvi7vk6y.cloudfront.net';

  // 从返回的 JSON 中挑选一个可以正常访问的域名
  static Future<String> fetchValidDomain() async {
    try {
      // 直接返回cloudfront域名，不再需要检查其他域名
      return ossDomain;
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching valid domain: $ossDomain:  $e');
      }
      rethrow;
    }
  }
}
