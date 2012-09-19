class Progress {
  static final String STRIPED  = "progress-striped";
  static final String ACTIVE   = "active";
  static final String INFO     = "progress-info";
  static final String SUCCESS  = "progress-success";
  static final String WARNING  = "progress-warning";
  static final String DANGER   = "progress-danger";

  String     _targetElementID;
  DivElement _divCurrent;
  int        _percent;

  Progress(this._targetElementID);

  String get targetElementID => this._targetElementID;
  void set targetElementID( String targetElementID ) {
    this._targetElementID = targetElementID;
  }

  int get percent => this._percent;
  void set percent( int val ) {
    this._percent = val;
    _onPercentChanged( val );
  }

  /**
   * show
   *
   * */
  DivElement show( List<String> options ) {
    Element parent = document.query( this._targetElementID );
    if( parent == null ) {
      throw( new Exception('Target Not Found. [${this._targetElementID}]') );
    }

    String div = _buildProgressDiv( percent, options );
    DivElement divElement = new Element.html(div);

    if( _divCurrent != null ) {
      _divCurrent.remove();
      _divCurrent = null;
    }

    parent.nodes.add(divElement);
    _divCurrent = divElement;

    return divElement;
  }

  String _buildProgressDiv( int percent, List<String> options ) {
    StringBuffer opts = new StringBuffer();
    opts.add('progress');
    options.forEach((String val){
      opts.add(" ${val}");
    });

    StringBuffer div = new StringBuffer();
    div.add('<div class="${opts.toString()}">');
    div.add('  <div class="bar" style="width: ${percent}%;"></div>');
    div.add('</div>');

    return div.toString();
  }

  void _onPercentChanged( int percent ) {
    if( _divCurrent == null ) {
      return;
    }

    DivElement de = _divCurrent.nodes[1];
    de.attributes['style'] = 'width: ${percent}%;';
  }

}
