public void controlEvent(ControlEvent theEvent) {
  if (BEGUN) {
    if (theEvent.isFrom(login)) {
      home = false;

      login.hide();
      logon.hide();
      password.hide();
      user.hide();
    }  
  } else {
  }
}
