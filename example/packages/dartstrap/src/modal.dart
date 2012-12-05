part of dartstrap;

class Modal {
  String topDivId;
  String topDivClass;
  String header;
  String body;
  String footer;

  Modal() {
    topDivId    = '__myModal';          //default div id
    topDivClass = 'modal hide fade';    //default class options
    header      = '<h3 class="">This is default header Property.</h3>';
    body        = '<p>This is default body Property</p>';
    footer      = '<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>';
  }

  /**
   * show
   *
   * */
  DivElement show() {
    Element parent = document.query('body');
    if( parent == null ) {
      throw( new Exception('Target Not Found. [<body>]') );
    }

    DivElement el = document.query('#${this.topDivId}');
    if( el != null ){ el.remove(); }

    parent.appendHtml(_buildModalDiv());

    Util.execJS( "jQuery('#${this.topDivId}').modal('show');" );

    return query('#${this.topDivId}');
  }
  
  /**
   * hide
   *
   * */
  void hide() {
    Util.execJS( "jQuery('#${this.topDivId}').modal('hide');" );
  }
  
  
  /**
   * toggle
   *
   * */
  void toggle() {
    Util.execJS( "jQuery('#${this.topDivId}').modal('toggle');" );
  }



/*
  <div id="myModal" class="modal hide fade">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <h3 class="text-info">Hello Modal</h3>
    </div>
    <div class="modal-body">
      <p>This is body. body. body. body.</p>
    </div>
    <div class="modal-footer">
      <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    </div>
  </div>
*/
  String _buildModalDiv() {
    String div = '''
  <div id="${topDivId}" class="${topDivClass}">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      ${header}
    </div>
    <div class="modal-body">
      ${body}
    </div>
    <div class="modal-footer">
      ${footer}
    </div>
  </div>
''';
    return div;
  }

}
