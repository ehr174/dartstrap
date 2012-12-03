import 'dart:html';
import 'package:dartstrap/dartstrap.dart';

void main() {

  document.query('#ShowModal').on.click.add((_){
    Modal modal = new Modal('#myModal');
    modal.show();
  });

}