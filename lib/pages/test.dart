import 'dart:io';

void listDirectoryContents() {
  Directory directory = Directory('/assets/carousel');

  if (directory.existsSync()) {
    List<FileSystemEntity> files = directory.listSync();

    for (var file in files) {
      if (file is File) {
        print('File: ${file.path}');
      } else if (file is Directory) {
        print('Directory: ${file.path}');
      }
    }
  } else {
    print('Directory does not exist.');
  }
}
