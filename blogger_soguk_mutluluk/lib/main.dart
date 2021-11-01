import 'package:blogger_soguk_mutluluk/json_parse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';
import 'theme.dart';

void main() {
  runApp(const SogukMutlulukMain());
  JsonParser().fetchPostList();
}

class SogukMutlulukMain extends StatelessWidget {
  const SogukMutlulukMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        theme: myTheme,
        home: const MainPage()
    );
  }
}
