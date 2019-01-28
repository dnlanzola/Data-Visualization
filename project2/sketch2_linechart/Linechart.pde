

class Linechart extends Frame {

  Table data;
  String useColumn;

  Linechart( Table _data, String _useColumn ) {
    data = _data;
    useColumn = _useColumn;
  }
  
  void setColumn( String _useColumn ){
    useColumn = _useColumn;
  }

  void draw() {  
    
    int pOA = 0;
    int pOB = 0;

     for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float h = myTable.getInt(i,"VALUE1");
      float hh = 0;
      if (i + 1 != myTable.getRowCount())
        hh = myTable.getInt(i+1,"VALUE1");
      h = h * 3;
      hh = hh * 3;
      fill(0);
      text(myTable.getString(i,"YEAR"), 100+i*46,520);
      text("YEAR", 298,550);
      text("VALUE1", 20,296);
      text("Democrats",520,40);
      text("Republicans",520,60);
      text(myTable.getString(i,"VALUE1"),110 + i*45, 495 - h);
      
      stroke(0);
      fill(0,102,204);
      rect(500,30,10,10);
      fill(216,61,61);
      rect(500,50,10,10);
      
      stroke(0);
      
  
        fill(0,102,204);
      
      if (i + 1 != myTable.getRowCount())
    {
      line(100 + i*45, h+300, 100 + (i+1)*45, hh+300);
    }  
  
    }
  
  }

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
