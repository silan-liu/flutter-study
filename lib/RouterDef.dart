import 'package:flutter/material.dart';
import 'ListPage.dart';
import 'RichText/RichTextPage.dart';

// 定义路由映射信息
Map<String, WidgetBuilder> routers = {
  "ListView": (context) {
    return ListPage();
  },

  "RichText": (context) {
    return RichTextPage();
  }
};
