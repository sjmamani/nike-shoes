import 'package:flutter/services.dart' as services;

void changeStatusToLight() {
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.light);
}

void changeStatusToDark() {
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.dark);
}