import java.io.*;
import java.net.*;

import controlP5.*;

ControlP5 cp5;
/* ControlP5*/
Button login, logon;
Textfield user, password;
/* Stream */
Socket smtpSocket = null;  
DataOutputStream os = null;
DataInputStream is = null;

String separator;
boolean BEGUN;
boolean home = true;

Machine m, m1;
MachineList ml;

void setup() {
  fullScreen();
  noStroke();

  cp5 = new ControlP5(this);
  m = new Machine("id", "ip");
  m.setStatus(NOT_OK_STATUS);
  m1 = new Machine("id", "ip");
  m1.setStatus(OK_STATUS);

  ml = new MachineList(5, 100);

  int offset = 1;
  int y0 = 5;
  int itemh = 42;
  ml.addMachine(5, y0+0*(itemh+offset), m);
  ml.addMachine(5, y0+1*(itemh+offset), m1);
  ml.addMachine(5, y0+2*(itemh+offset), m1);

  gui();

  BEGUN = true;

  final String OS = platformNames[platform];
  println(OS);
  if (OS.equals(WINDOWS)) {
    separator = "\\";
  } else if (OS.equals(LINUX)) {
    separator = "/";
  } else {
  }
}

void draw() {
  background(230);

  draw_taskBar();

  if (home) {
    loginScreen();
  } else {
    ml.show();
  }
}
