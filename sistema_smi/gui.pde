void gui() {
  /* Exibir próxima imagem ou imagem anterior */
  //PImage imgs = loadImage("data/icons/next.png");

  PFont font = createFont("Lucida Sans", 12);
  login = cp5.addButton("Entrar")
    .setValue(128)
    .setSize(150, 40)
    .setColorForeground(GREEN)
    .setColorBackground(color(100))
    .setColorCaptionLabel(WHITE)
    .setFont(font)
    ;
  login.hide();

  logon = cp5.addButton("Cadastrar")
    .setValue(128)
    .setSize(150, 40)
    .setColorForeground(GREEN)
    .setColorBackground(color(100))
    .setColorCaptionLabel(WHITE)
    .setFont(font)
    ;
  logon.hide();

  user = cp5.addTextfield("user")
    .setPosition(20, 100)
    .setSize(200, 30)
    .setFont(font)
    .setFocus(true)
    .setColor(color(56))
    ;
  user.hide();

  password = cp5.addTextfield("password")
    .setPosition(20, 100)
    .setSize(200, 40)
    .setFont(font)
    .setFocus(true)
    .setColor(color(56))
    .setPasswordMode(true);
  ;
  password.hide();
}
