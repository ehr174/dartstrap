#import ('dart:html');
#import ('../lib/dartstrap.dart');

void main() {

  List buttonNames = ["One", "Two", "Three", "Four", "Five"];
  ButtonGroup button_group = new ButtonGroup('#container');
  button_group.show(buttonNames, [ButtonGroup.BUTTON_GROUP]);

}

