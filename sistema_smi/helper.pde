void draw_taskBar() {
  //fill(88);
  //rect(0, 0, width, height);

  // Barra
  fill(GREEN);
  rect(0, 0, width, TASK_BAR_H);

  // Título
  fill(WHITE);
  textSize(15);
  textAlign(LEFT, CENTER);
  text(TITLE, 50, TASK_BAR_H/2 - 2);

  // Ícone
  PImage icon = loadImage("data/icons/icon.png");
  image(icon, 8, TASK_BAR_H/2 - 32/2, 32, 32);
}

void loginScreen() {
  float w_login = width*0.33;
  float h_login = height*0.5;
  float x = width/2 - w_login/2;
  float y = height/2-h_login/2; 
  int offsetx = 20;
  int offsety = 105;

  fill(WHITE);
  rect(x, y, w_login, h_login);

  fill(56);
  textSize(24);
  text("Login", x+offsetx, y + 40);

  // Usuário
  textSize(16);
  int uh = user.getHeight();
  text("Usuário", x+offsetx, y + offsety - uh/2);
  user.setPosition(x + offsetx, y + offsety);
  user.setSize(int(w_login)-2*offsetx, uh);
  user.setColorBackground(WHITE);
  user.setColorForeground(WHITE);
  user.setColorActive(WHITE);

  int off = 2;
  if (user.isActive()) {
    off = 0;
    stroke(GREEN);
    strokeWeight(3);
  } else {
    stroke(100);
    strokeWeight(1);
  }
  line(x+offsetx, y+uh+offsety+off, x+w_login-offsetx, y+uh+offsety+off);
  noStroke();
  user.show();

  // Senha
  login.setPosition(x + 2, y + h_login - login.getHeight());

  int ph = password.getHeight();
  text("Senha", x+offsetx, y + 2*offsety - ph/2);
  password.setPosition(x + offsetx, y + 2*offsety);
  password.setSize(int(w_login)-2*offsetx, uh);
  password.setColorBackground(WHITE);
  password.setColorForeground(WHITE);
  password.setColorActive(WHITE);

  off = 2;
  if (password.isActive()) {
    off = 0;
    stroke(GREEN);
    strokeWeight(2);
  } else {
    stroke(100);
    strokeWeight(1);
  }
  line(x+offsetx, y+uh+2*offsety+off, x+w_login-offsetx, y+uh+2*offsety+off);
  noStroke();
  password.show();

  // Login
  int offsetx_bot = 30;
  int offsety_bot = 30;
  int xlogin = width/2;
  login.setPosition(xlogin-login.getWidth()-offsetx_bot, y + h_login-login.getHeight() - offsety_bot);
  login.show();

  // Logon
  logon.setPosition(xlogin+offsetx_bot, y + h_login-logon.getHeight()-offsety_bot);
  logon.show();
}
