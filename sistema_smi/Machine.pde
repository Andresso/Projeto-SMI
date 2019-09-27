/*
  Machine.pde
 */

class Machine {
  String id;
  String ip;
  String status; // OK ou NOT OK

  Machine(String id, String ip) {
    this.id = id;
    this.ip = ip;
    this.status = OK_STATUS;
  }

  void setStatus(String status) {
    this.status = status;
  }

  String getID() {
    return this.id;
  }
  String getIP() {
    return this.ip;
  }
  String getStatus() {
    return this.status;
  }
}
