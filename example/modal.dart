import 'dart:html';
import 'package:dartstrap/dartstrap.dart';

void main() {

  document.query('#notSetProperties').onClick.listen((_){
    Modal modal = new Modal();
    modal.show();
  });


  document.query('#info').onClick.listen((_){
    Modal modal = new Modal();
    modal.header = '<h3 class="text-info">INFO</h3>';
    modal.body   = '<p>info info info info info<br>info info info<br>info info info info info info info info</p>';
    modal.footer = '<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button> <button id="vote" class="btn btn-primary">VOTE</button>';
    modal.show();

    document.query('#vote').onClick.listen((_){
      print('clicked vote button.');
      modal.hide();
    });
  });

  document.query('#success').onClick.listen((_){
    Modal modal = new Modal();
    modal.header = '<h3 class="text-success">SUCCESS</h3>';
    modal.show();
  });

  document.query('#warning').onClick.listen((_){
    Modal modal = new Modal();
    modal.header = '<h3 class="text-warning">WARNING</h3>';
    modal.show();
  });

  document.query('#error').onClick.listen((_){
    Modal modal = new Modal();
    modal.header = '<h3 class="text-error">ERROR</h3>';
    modal.show();
  });


}