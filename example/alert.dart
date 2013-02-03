import 'dart:html';
//import 'package:dartstrap/dartstrap.dart';
import '../lib/dartstrap.dart';

void main() {
  Alert alert = new Alert('#alert');

  document.query('#warning').onClick.listen((_){
    alert.alert("<h4>WARNING</h4>warning, warning, warning, warning", [Alert.BLOCK, Alert.WARNING]);
  });

  document.query('#error').onClick.listen((_){
    alert.alert("<h4>ERROR</h4>error, error, error, error.", [Alert.BLOCK, Alert.ERROR]);
  });

  document.query('#success').onClick.listen((_){
    DivElement divAlert = alert.alert("<h4>SUCCESS</h4>success, success, success", [Alert.BLOCK, Alert.SUCCESS]);
    window.setTimeout((){
      divAlert.remove();
    }, 3000);
  });

  document.query('#info').onClick.listen((_){
    DivElement divAlert = alert.alert("<h4>INFO</h4>info, info, info, info, info", [Alert.BLOCK, Alert.INFORMATION]);
    window.setTimeout((){
      divAlert.remove();
    }, 3000);
  });

  document.query('#clear').onClick.listen((_){
    alert.clear();
  });
}
