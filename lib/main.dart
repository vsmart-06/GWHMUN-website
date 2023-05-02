import 'package:flutter/material.dart';
import 'package:website/pages/home_page.dart';
import "package:website/pages/committee_page.dart";
import "package:website/pages/secretariat_page.dart";
import "package:website/pages/resources_page.dart";
import "package:website/pages/unsc_page.dart";
import "package:website/pages/unhrc_page.dart";
import "package:website/pages/unep_page.dart";
import "package:website/pages/disec_page.dart";

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      routes: {
        "/": (context) => Home(),
        "/committees": (context) => Committee(),
        "/secretariat": (context) => Secretariat(),
        "/resources": (context) => Resources(),
        "/unsc": (context) => UNSC(),
        "/disec": (context) => DISEC(),
        "/unhrc": (context) => UNHRC(),
        "/unep": (context) => UNEP()
      }
    )
  );
}