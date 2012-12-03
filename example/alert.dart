import 'dart:html';
import 'package:dartstrap/dartstrap.dart';

void main() {
  Alert alert = new Alert('#alert');

  document.query('#warning').on.click.add((_){
    alert.alert("<h4>WARNING</h4>warning, warning, warning, warning", [Alert.BLOCK, Alert.WARNING]);
  });

  document.query('#error').on.click.add((_){
    alert.alert("<h4>ERROR</h4>error, error, error, error.", [Alert.BLOCK, Alert.ERROR]);
  });

  document.query('#success').on.click.add((_){
    DivElement divAlert = alert.alert("<h4>SUCCESS</h4>success, success, success", [Alert.BLOCK, Alert.SUCCESS]);
    window.setTimeout((){
      divAlert.remove();
    }, 3000);
  });

  document.query('#info').on.click.add((_){
    DivElement divAlert = alert.alert("<h4>INFO</h4>info, info, info, info, info", [Alert.BLOCK, Alert.INFORMATION]);
    window.setTimeout((){
      divAlert.remove();
    }, 3000);
  });
}
