

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
      /* GET VALUE FROM TABLE
         h represents the height of the bar.*/
      float h = myTable.getInt(i,"VALUE1");
      h = h * 3;
      fill(0);
      
      /* GET YEAR FOR THE X-AXIS */
      text(myTable.getString(i,"YEAR"), 100+i*46,520);
      stroke(0);
      
      /* LINES FOR X AND Y AXIS */
      line(95,500,500,500);
      line(95,95,95,500);
      
      /* NAME OF X-AXIS  */
      text("YEAR", 298,550);
      /* NAME OF Y-AXIS  */
      text("VALUE1", 20,296);
      
      /* NAMES FOR LEGEND  */
      text("Democrats",520,40);
      text("Republicans",520,60);
      text(myTable.getString(i,"VALUE1"),110 + i*45, 495 - h);
      
      /* COLORED SQUARES FOR LEGEND  */
      stroke(0);
      fill(0,102,204);
      rect(500,30,10,10);
      fill(216,61,61);
      rect(500,50,10,10);
      
      noStroke();
      
      
      /* P REPRESENTS THE PARTY OF THE CURRENT VALUE1 
      IF THE VALUE IF REP IT WILL FILL THE BAR WITH RED,
      IF THE VALUE IS DEM IT WILL FILL THE BAR WITH BLUE */
      String p = myTable.getString(i,"PARTY");
      if (p.equals("REP"))
      {
        fill(216,61,61);
      }
      else
      {
        fill(0,102,204);
      }
       
      /* DRAW BAR  */
      rect(100 + i*45, 500 - h, 35, h);
      
    }

  
  
  
  }

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
