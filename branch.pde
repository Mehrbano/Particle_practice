class Branch{
  PVector begin;
  PVector end;
  boolean grown;
  
  Branch(PVector b, PVector e){
    begin = b.get();
    end = e.get();
    grown = false;
  }
 
  
  Branch makeLeftBranch(){
    PVector dir = PVector.sub(end,begin);
    dir.mult(0.67);
    dir.rotate(PI/4);
    PVector newEnd = PVector.add(end, dir);
    Branch left = new Branch(end, newEnd);
    return left;
  }
  
    Branch makeRightBranch(){
    PVector dir = PVector.sub(end,begin);
    dir.mult(0.77);
    dir.rotate(-PI/9);
    PVector newEnd = PVector.add(end, dir);
    Branch right = new Branch(end, newEnd);
    return right;
  }
}
