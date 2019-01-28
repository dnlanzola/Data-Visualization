

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
    

     for (int i = 0; i < myTable.getRowCount(); i++)
    {
      /* h REPRESENTS THE CURRENT VALUE
         hh REPRESENTS THE NEXT VALUE*/
      float h = myTable.getInt(i,"VALUE1");
      float hh = 0;
      
      /* THIS CONDITION PREVENTS FROM GOING OUT OF BOUNDS  */
      if (i + 1 != myTable.getRowCount())
        hh = myTable.getInt(i+1,"VALUE1");

      h = h * 3;
      hh = hh * 3;
      
      fill(0);
      /* GET YEAR FOR THE X-AXIS */
      text(myTable.getString(i,"YEAR"), 100+i*46,520);
      stroke(0);
      strokeWeight(1);
      
      /* LINES FOR X AND Y AXIS */
      line(100,500,500,500);
      line(100,100,100,500);
      
      /* NAME OF X-AXIS  */
      text("YEAR", 298,550);
      /* NAME OF Y-AXIS  */
      text("VALUE1", 20,296);
      
      /* NAME OF LEGEND  */
      text("Fluctuation",520,40);
      text(myTable.getString(i,"VALUE1"),110 + i*45, 495 - h);
      
      /* COLORED SQUARE FOR LEGEND  */
      fill(0,153,76);
      rect(500,30,10,10);
 
      
      stroke(0);
      
  
      fill(0,102,204);
      
      /* THIS CONDITION PREVENTS FROM GOING OUT OF BOUNDS  */
      if (i + 1 != myTable.getRowCount())
      {
        /* DRAW LINE  */
        stroke(0,153,76);
        strokeWeight(4);
        line(110 + i*45, 495-h, 110 + (i+1)*45, 495-hh);
      }  
  
    }
  
  }

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
