
config const flag = true;

class A {
  var a : int;
  proc init() {
    writeln("A.init");
  }
  proc postInit() {
    writeln("A.postInit");
  }
}

class B : A {
  var b : bool;
  proc init(b:bool) {
    writeln("B.init");
    this.b = b;
  }
  proc postInit() {
    if b {
      writeln("B.postInit");
      super.postInit();
    } else {
      super.postInit();
      writeln("B.postInit");
    }
  }
}

var b = new B(flag);
delete b;
