import 'package:flutter/widgets.dart';

class PageModel{
  String _image;
  String _title;
  String _desc;
  IconData _icon;

  PageModel(this._image, this._title, this._desc, this._icon);

  IconData get icon => _icon;

  String get desc => _desc;

  String get title => _title;

  String get image => _image;
}