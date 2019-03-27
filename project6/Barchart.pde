class Barchart extends Frame {

  Table data;
  String useColumn;

    Barchart( Table _data, String _useColumn ) {
      data = _data;
      useColumn = _useColumn;
      barMapX = new float[myTable.getRowCount()];
      barMapY = new float[myTable.getRowCount()];
      barYAxis = new float[myTable.getRowCount()];
  }
  
    void setColumn( String _useColumn ){
      useColumn = _useColumn;
    }

  void draw() {  
      float  minVal, maxVal;
    
      // X - AXIS
      float xAxis1 = width * 0.05;
      float xAxis2 = width * 0.48;
      float yAxis = height * 0.25;
      line (xAxis1, yAxis, xAxis2, yAxis);
    
      // Y - AXIS
      float yAxis2 = height * 0.06;
      line (xAxis1, yAxis, xAxis1, yAxis2);
    

      int select = keyBar;
      textSize(12);
      text(myTable.getColumnTitle(select), width * 0.25, height * 0.272);
  
  
      minVal = myTable.getFloat(1, select);
      maxVal = myTable.getFloat(1, select);
  
      float[] vals = new float[myTable.getRowCount()];
    

      for (int i = 0; i < myTable.getRowCount(); i++)
      {
          vals[i] = myTable.getFloat(i, select);
        
          if (myTable.getFloat(i, select) < minVal)
              minVal = myTable.getFloat(i, select);
          else if (myTable.getFloat(i, select) > maxVal)
              maxVal = myTable.getFloat(i, select);
      
          if (i + 1 == myTable.getRowCount())
          {  
            for (int j = 0; j < myTable.getRowCount(); j++)
            {
                float xMap = map(j, 0, myTable.getRowCount(), xAxis1,  xAxis2);
                float yMap = map(vals[j], minVal, maxVal, yAxis, yAxis2 + ((maxVal - minVal)/8));
     
                rect(xMap, yMap, width * 0.00001, yAxis - yMap);   
                barMapX[j] = xMap;
                barMapY[j] = yMap;
                barYAxis[j] = yAxis;
            }

          }
      }
      
     textAlign(RIGHT);
     text(maxVal, xAxis1, yAxis2);
     text(minVal, xAxis1, yAxis);
     text(  ((maxVal-minVal)/2 ) + minVal,xAxis1, height * 0.15);
     
     textAlign(CENTER);
      
      
      

  }

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
