part of dartstrap;

class Alert {
  static final String BLOCK       = "alert-block";
  static final String WARNING     = "";
  static final String ERROR       = "alert-error";
  static final String SUCCESS     = "alert-success";
  static final String INFORMATION = "alert-info";

  String     _targetElementID;

  Alert(this._targetElementID);

  String get targetElementID => this._targetElementID;
  void set targetElementID( String targetElementID ) {
    this._targetElementID = targetElementID;
  }

  /**
   * alert
   *
   * */
  DivElement alert( String message, List<String> options ) {
    Element parent = document.query( this._targetElementID );
    if( parent == null ) {
      throw( new Exception('Target Not Found. [${this._targetElementID}]') );
    }

    String div = _buildAlertDiv( message, options );
    DivElement divElement = new Element.html(div);

    parent.nodes.add(divElement);

    return divElement;
  }

  void clear() {
    Element parent = document.query( this._targetElementID );
    if( parent == null ) {
      throw( new Exception('Target Not Found. [${this._targetElementID}]') );
    }

    parent.children.clear();
  }


  String _buildAlertDiv( String message, List<String> options ) {
    StringBuffer opts = new StringBuffer();
    opts.add('alert fade in');
    options.forEach((String val){
      opts.add(" ${val}");
    });

    String div = '''
<div class="${opts.toString()}">
  <button type="button" class="close" data-dismiss="alert">×</button>
  ${message}
</div>
''';

    return div;
  }

}
