/*


*/

class MachineList {
  final int itemHeight = 42;
  final int itemx = 5;
  ArrayList<ItemList> list;
  int x, y;


  MachineList(int x, int y) {
    this.x = x;
    this.y = y;
    this.list = new ArrayList<ItemList>();
  }

  void addMachine(int x, int y, Machine machine) {
    ItemList item = new ItemList(x, this.y+y, machine);
    item.setSize(width-2*this.itemx, this.itemHeight);
    list.add(item);
  }

  int getNumberOfMachines() {
    return list.size();
  }

  void show() {
    fill(56);
    textSize(16);
    text("Máquinas", 10, TASK_BAR_H + 25);

    for (ItemList item : this.list) {
      item.show();
    }
  }
}

class ItemList {
  final color itemColorOK = color(123, 205, 193);
  final color itemColorNOTOK = color(255, 128, 128);

  int x, y;
  int itemWidth, itemHeight;
  Machine machine;

  ItemList(int x, int y, Machine machine) {
    this.x = x;
    this.y = y;
    this.machine = machine;
  }

  ItemList(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void setPosition(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void setMachine(Machine machine) {
    this.machine = machine;
  }

  void setSize(int w, int h) {
    this.itemWidth = w;
    this.itemHeight = h;
  }

  int getWidth() {
    return this.itemWidth;
  }

  int getHeight() {
    return this.itemHeight;
  }

  void show() {
    if (this.machine.getStatus().equals(OK_STATUS)) {
      fill(this.itemColorOK);
    } else {
      fill(this.itemColorNOTOK);
    }
    rect(this.x, this.y, this.itemWidth, this.itemHeight);
    fill(WHITE);
    text("Máquina " + this.machine.id, this.x + 10, this.y + this.itemHeight/2);
  }
}
