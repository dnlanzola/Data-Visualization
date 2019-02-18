

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
      float h = myTable.getInt(i,"SATV");
      float hh = 0;
      
      /* THIS CONDITION PREVENTS FROM GOING OUT OF BOUNDS  */
      if (i + 1 != myTable.getRowCount())
        hh = myTable.getInt(i+1,"SATV");

      h = h / 1.5;
      hh = hh / 1.5;
      
      fill(0);
      /* GET YEAR FOR THE X-AXIS */
      //text(myTable.getString(i,"SATM"), 100+i*46,620);
      stroke(0);
      
      /* LINES FOR X AND Y AXIS */
      line(95,650,950,650);
      line(95,95,95,650);
      
      /* NAME OF X-AXIS  */
      text("SATV", 500,680);
      /* NAME OF Y-AXIS  */
      text("SATM", 20,296);
      
      /* NAMES FOR LEGEND  */

      //text(myTable.getString(i,"SATM"),110 + i*45, 990 - h);
      

      
      noStroke();
      
      
      /* P REPRESENTS THE PARTY OF THE CURRENT VALUE1 
      IF THE VALUE IF REP IT WILL FILL THE BAR WITH RED,
      IF THE VALUE IS DEM IT WILL FILL THE BAR WITH BLUE */


      text("SATM:",720,40);
      text("SATV:",720,60);
      text("ACT:",720,80);
      text("GPA:",720,100);

      if ( dist( mouseX, mouseY, 100 + i*3, 650-h ) < 4 ) {
        fill( 255, 0, 0 );
        text(myTable.getString(i,"SATM"),760,40);
        text(myTable.getString(i,"SATV"),760,60);
        text(myTable.getString(i,"ACT"),760,80);
        text(myTable.getString(i,"GPA"),760,100);
      } else {

        fill(0,102,204);
      }
      
      /* THIS CONDITION PREVENTS FROM GOING OUT OF BOUNDS  */
      if (i + 1 != myTable.getRowCount())
      {
        /* DRAW LINE  */
        stroke(0,153,76);
        strokeWeight(1);
        line(110 + i*45, 495-h, 110 + (i+1)*45, 495-hh);
      }  
  
    }
  
  }

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
