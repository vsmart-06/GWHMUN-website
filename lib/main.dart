import 'package:flutter/material.dart';
import 'package:website/pages/home_page.dart';
import "package:website/pages/committee_page.dart";
import "package:website/pages/secretariat_page.dart";
// import "package:website/pages/resources_page.dart";
import "package:website/pages/unsc_page.dart";
import "package:website/pages/unhrc_page.dart";
import "package:website/pages/unep_page.dart";
import "package:website/pages/disec_page.dart";
import "package:website/pages/aippm_page.dart";
import "package:website/pages/registrations_page.dart";
import "package:website/pages/ipc_page.dart";
import "package:website/pages/jcc_page.dart";
import "package:website/pages/sochum_page.dart";
void main() {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      title: "GWHMUN 2023",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Home(),
        "/committees": (context) => Committee(),
        "/secretariat": (context) => Secretariat(),
        //"/resources": (context) => Resources(),
        "/registrations": (context) => Registrations(),
        "/unsc": (context) => UNSC(),
        "/disec": (context) => DISEC(),
        "/unhrc": (context) => UNHRC(),
        "/unep": (context) => UNEP(),
        "/ipc": (context) => IPC(),
        "/aippm": (context) => AIPPM(),
        "/jcc": (context) => JCC(),
        "/sochum": (context) => SOCHUM()
      }
    )
  );
}