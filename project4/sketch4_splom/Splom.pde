

class Splom extends Frame {

  Table data;
  String useColumn;

  Splom( Table _data, String _useColumn ) {
    data = _data;
    useColumn = _useColumn;
  }
  
  void setColumn( String _useColumn ){
    useColumn = _useColumn;
  }

  void draw() {  
   
     fill(0);
      
      stroke(0);
      
      /* LINES FOR X AND Y AXIS */
      //line(95,500,500,500);
      //line(95,95,95,500);
      


      /* NAME OF X-AXIS  */
      //text("SATM", 298,550);
      /* NAME OF Y-AXIS  */
      //text("SATV", 20,296);
      noStroke();
      
        for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"SATM");
          int value2 = myTable.getInt(i,"SATV");
      
          float m = map(value, 100, width, 0, 50);
          float n = map(value2, 100, height, 0, 50);

          ellipse(m, n, 3, 3);
          stroke(0);
        }

            for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"SATM");
          int value2 = myTable.getInt(i,"ACT");
      
          float m = map(value, 100, width, 100, 50);
          float n = map(value2, 100, height, 100, 50);

          ellipse(m, n, 3, 3);
          stroke(0);
        }
  
            for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"SATM");
          int value2 = myTable.getInt(i,"GPA");
      
          float m = map(value, 100, width, 150, 50);
          float n = map(value2, 100, height, 150, 50);

          ellipse(m, n, 3, 3);
          stroke(0);
        }
  
            for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"SATV");
          int value2 = myTable.getInt(i,"SATM");
      
          float m = map(value, 100, width, 100, 150);
          float n = map(value2, 100, height, 100, 150);

          ellipse(m, n, 3, 3);
          stroke(0);
        }
        
            for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"SATV");
          int value2 = myTable.getInt(i,"ACT");
      
          float m = map(value, 100, width, 200, 250);
          float n = map(value2, 100, height, 200, 250);

          ellipse(m, n, 3, 3);
          stroke(0);
        }
        
            for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"SATV");
          int value2 = myTable.getInt(i,"GPA");
      
          float m = map(value, 100, width, 300, 350);
          float n = map(value2, 100, height, 300, 350);

          ellipse(m, n, 3, 3);
          stroke(0);
        }
        
            for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"ACT");
          int value2 = myTable.getInt(i,"SATM");
      
          float m = map(value, 100, width, 400, 450);
          float n = map(value2, 100, height, 400, 450);

          ellipse(m, n, 3, 3);
          stroke(0);
        }        
        
            for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"ACT");
          int value2 = myTable.getInt(i,"SATV");
      
          float m = map(value, 100, width, 200, 250);
          float n = map(value2, 100, height, 200, 250);

          ellipse(m, n, 3, 3);
          stroke(0);
        }           

            for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"ACT");
          int value2 = myTable.getInt(i,"GPA");
      
          float m = map(value, 100, width, 250, 200);
          float n = map(value2, 100, height, 250, 200);

          ellipse(m, n, 3, 3);
          stroke(0);
        }           
        
             for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"GPA");
          int value2 = myTable.getInt(i,"SATM");
      
          float m = map(value, 100, width, 150, 100);
          float n = map(value2, 100, height, 150, 100);

          ellipse(m, n, 3, 3);
          stroke(0);
        }       
              for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"GPA");
          int value2 = myTable.getInt(i,"SATV");
      
          float m = map(value, 100, width, 150, 100);
          float n = map(value2, 100, height, 150, 100);

          ellipse(m, n, 3, 3);
          stroke(0);
        }      
        
             for (int i = 0; i < myTable.getRowCount(); i++)
        {
          int value = myTable.getInt(i,"GPA");
          int value2 = myTable.getInt(i,"ACT");
      
          float m = map(value, 100, width, 150, 100);
          float n = map(value2, 100, height, 150, 100);

          ellipse(m, n, 3, 3);
          stroke(0);
        }              
  }

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
