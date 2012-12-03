part of dartstrap;

class ButtonGroup {

  static final String BUTTON_GROUP = "btn-group";

  int _buttons;
  List<String> _buttonNames;
  String _targetElementID;

  DivElement _divCurrent;

  ButtonGroup(this._targetElementID);

  List<String> get buttonNames => this._buttonNames;
  void set buttonNames(List<String> names) {
    this._buttonNames = names;
  }

  /**
   * show
   *
   * */
  DivElement show(List<String> buttonNames, List<String> options ) {
    Element parent = document.query( this._targetElementID );
    if( parent == null ) {
      throw( new Exception('Target Not Found. [${this._targetElementID}]') );
    }

    if(buttonNames.length > 0) {
      String div = _buildButtonGroupDiv(buttonNames, options);
      DivElement divElement = new Element.html(div);
      parent.nodes.add(divElement);
    } else {
      throw( new Exception('No Names Defined For Buttons'));
    }
  }

  String _buildButtonGroupDiv(List<String> buttonNames, List<String> options) {
    StringBuffer opts = new StringBuffer();

    options.forEach((String val) {
      opts.add(" $val");
    });

    StringBuffer div = new StringBuffer();
    div.add('<div class="${opts.toString()}">');
    buttonNames.forEach((String val) {
      div.add('<button class="btn">$val</button>');
    });
    div.add('</div>');

    return div.toString();
  }
}
