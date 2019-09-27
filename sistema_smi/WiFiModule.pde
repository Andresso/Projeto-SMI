
boolean connect_esp() {
  boolean status = false;
  try {
    smtpSocket = new Socket("192.168.1.2", 8888);
    os = new DataOutputStream(smtpSocket.getOutputStream());
    is = new DataInputStream(smtpSocket.getInputStream());
    status = true;
  } 
  catch (UnknownHostException e) {
    println("Don't know about host: hostname");
  } 
  catch (IOException e) {
    println("Couldn't get I/O for the connection to: hostname");
  }

  return status;
}
