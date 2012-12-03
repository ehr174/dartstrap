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

    String div = _buildModalDiv();
    DivElement divElement = new Element.html(div);

    parent.nodes.add(divElement);

    Util.execJS( "jQuery('#${this.topDivId}').modal('show');" );

    return divElement;
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
    StringBuffer div = new StringBuffer();
    div.add('<div id="${topDivId}" class="${topDivClass}">');
    div.add('  <div class="modal-header">');
    div.add('    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>');
    div.add('    ${header}');
    div.add('  </div>');
    div.add('  <div class="modal-body">');
    div.add('    ${body}');
    div.add('  </div>');
    div.add('  <div class="modal-footer">');
    div.add('    ${footer}');
    div.add('  </div>');
    div.add('</div>');

    return div.toString();
  }

//  void toggle() {
//    Util.execJS( "jQuery('${this._targetElementID}').modal('toggle');" );
//  }
//
//  void show() {
////    Util.execJS( "\$('${this._targetElementID}').modal('show');", false );
//    Util.execJS( "jQuery('${this._targetElementID}').modal('show');" );
//  }
//
//  void hide() {
//    Util.execJS( "jQuery('${this._targetElementID}').modal('hide');" );
//  }

}
