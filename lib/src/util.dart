class Util {
  static void execJS(String javascript, [bool removeAfter = true]){
    Element element = new Element.tag("script");
    element.attributes["type"] = "text/javascript";
    element.text = javascript;

    document.body.nodes.add(element);

    if( removeAfter == true ) {
      element.remove();
    }
  }

}
