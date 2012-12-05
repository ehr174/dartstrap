import 'dart:html';
import 'package:dartstrap/dartstrap.dart';

void main() {

  document.query('#notSetProperties').on.click.add((_){
    Modal modal = new Modal();
    modal.show();
  });


  document.query('#info').on.click.add((_){
    Modal modal = new Modal();
    modal.header = '<h3 class="text-info">INFO</h3>';
    modal.body   = '<p>info info info info info<br>info info info<br>info info info info info info info info</p>';
    modal.footer = '<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button> <button id="vote" class="btn btn-primary">VOTE</button>';
    modal.show();

    document.query('#vote').on.click.add((_){
      print('clicked vote button.');
      modal.hide();
    });
  });

  document.query('#success').on.click.add((_){
    Modal modal = new Modal();
    modal.header = '<h3 class="text-success">SUCCESS</h3>';
    modal.show();
  });

  document.query('#warning').on.click.add((_){
    Modal modal = new Modal();
    modal.header = '<h3 class="text-warning">WARNING</h3>';
    modal.show();
  });

  document.query('#error').on.click.add((_){
    Modal modal = new Modal();
    modal.header = '<h3 class="text-error">ERROR</h3>';
    modal.show();
  });


}