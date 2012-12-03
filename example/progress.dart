import 'dart:html';
import '../lib/dartstrap.dart';

Progress progress = new Progress('#progress');

void main() {

  progress.percent = 30;
  progress.show([]);

  document.query('#selectPercent').on.change.add((handler){
    SelectElement se = handler.currentTarget;
    progress.percent = int.parse(se.value);
  });

  document.query('#chkStriped').on.click.add((handler){
//    InputElement ie = handler.currentTarget;
//    print(ie.checked);
    _progressShow();

  });

  document.query('#chkActive').on.click.add((handler){
//    InputElement ie = handler.currentTarget;
    _progressShow();

  });


  document.queryAll('[name="optionsRadios"]').forEach((element){
    element.on.click.add((handler){
//      InputElement ie = handler.currentTarget;
//      print(ie.value);
      _progressShow();

    });
  });


}

void _progressShow() {
  List<String> options;
  options = _getOptions();
  progress.show(options);
}


List<String> _getOptions() {
  List<String> options = new List<String>();

  InputElement ie;

  ie = document.query('#chkStriped');
  if( ie.checked == true ) {
    options.add(Progress.STRIPED);
  }

  ie = document.query('#chkActive');
  if( ie.checked == true ) {
    options.add(Progress.ACTIVE);
  }

  ie = document.query('#radioInfo');
  if( ie.checked == true ) {
    options.add(Progress.INFO);
  }

  ie = document.query('#radioSuccess');
  if( ie.checked == true ) {
    options.add(Progress.SUCCESS);
  }

  ie = document.query('#radioWarning');
  if( ie.checked == true ) {
    options.add(Progress.WARNING);
  }

  ie = document.query('#radioDanger');
  if( ie.checked == true ) {
    options.add(Progress.DANGER);
  }

  return options;

}