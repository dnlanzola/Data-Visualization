

class Barchart extends Frame {

  Table data;
  String useColumn;

  Barchart( Table _data, String _useColumn ) {
    data = _data;
    useColumn = _useColumn;
  }
  
  void setColumn( String _useColumn ){
    useColumn = _useColumn;
  }

  void draw() {  
   
    for (int i = 0; i < myTable.getRowCount(); i++)
    {
     
      
      float h = myTable.getInt(i,"VALUE1");
      h = h * 3;
      fill(0);
      text(myTable.getString(i,"YEAR"), 100+i*46,520);
      stroke(0);
      line(95,500,500,500);
      line(95,95,95,500);
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
      
      noStroke();
      
      String p = myTable.getString(i,"PARTY");
      if (p.equals("REP"))
      {
        fill(216,61,61);
      }
      else
      {
        fill(0,102,204);
      }
       
      
      rect(100 + i*45, 500 - h, 35, h);
      
    }

  
  
  
  }

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
