

class Scatterplot extends Frame {

  Table data;
  String useColumn;

  Scatterplot( Table _data, String _useColumn ) {
    data = _data;
    useColumn = _useColumn;
  }
  
  void setColumn( String _useColumn ){
    useColumn = _useColumn;
  }
  
  int value = 0;
  
  void draw() {  

      fill(0);
      
      stroke(0);
      
      /* LINES FOR X AND Y AXIS */
      line(95,500,500,500);
      line(95,95,95,500);
      

    
    if (keyPressed == false) 
    {
      
      /* NAME OF X-AXIS  */
      text("SATM", 298,550);
      /* NAME OF Y-AXIS  */
      text("SATV", 20,296);
      noStroke();
      
        for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"SATM");
          int value2 = myTable.getInt(i,"SATV");
      
          float m = map(value, 100, width, 0, 350);
          float n = map(value2, 100, height, 0, 350);

          ellipse(m, n, 3, 3);
          stroke(0);
        }

    }
     else 
    {
      /* NAME OF X-AXIS  */
      text("ACT", 298,550);
      /* NAME OF Y-AXIS  */
      text("GPA", 20,296);
      noStroke();
        for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"ACT");
          int value2 = myTable.getInt(i,"GPA");
      
          value = value * 7;
          value2 = value2 * 7;
      
          float m = map(value, 50, width, 0, 2000);
          float n = map(value2, -100, height, 0, 2000);

          ellipse(m, n, 2, 2);
          stroke(0);
        }

    }
  }
  
  
  void mousePressed() {  }

  void mouseReleased() {   }
  
  void keyPressed() {
    
  if (value == 0) {
    value = 1;
  } else {
    value = 0;
  }
  println(value);
  }
}
