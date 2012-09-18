class Modal {
  String _targetElementID;

  Modal(this._targetElementID);

  String get targetElementID => this._targetElementID;
  void set targetElementID( String targetElementID ) {
    this._targetElementID = targetElementID;
  }


  /**
   * toggle
   *
   * */
  void toggle() {
    Util.execJS( "jQuery('${this._targetElementID}').modal('toggle');" );
  }

  /**
   * show
   *
   * */
  void show() {
//    Util.execJS( "\$('${this._targetElementID}').modal('show');", false );
    Util.execJS( "jQuery('${this._targetElementID}').modal('show');" );
  }

  /**
   * hide
   *
   * */
  void hide() {
    Util.execJS( "jQuery('${this._targetElementID}').modal('hide');" );
  }

}
