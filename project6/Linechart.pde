class Linechart extends Frame {

    Table data;
    String useColumn;

    Linechart( Table _data, String _useColumn ) {
      data = _data;
      useColumn = _useColumn;
      lineMapX = new float[myTable.getRowCount()];
      lineMapY = new float[myTable.getRowCount()];
    }
  
    void setColumn( String _useColumn ){
      useColumn = _useColumn;
    }

    void draw() {  
      float  minVal, maxVal;
    
      // X-AXIS
      float xAxis1 = width * 0.55;
      float xAxis2 = width * 0.99;
      float yAxis1 = height * 0.25;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
    
      // Y-AXIS
      float yAxis2 = height * 0.06;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
    
      // TITLE
      int select = keyBar;
      textSize(12);
      text(myTable.getColumnTitle(select), width * 0.75, height * 0.272); 
      
      
      float [] xAux = new float[myTable.getRowCount()];
      float [] yAux = new float[myTable.getRowCount()];
  

      minVal = myTable.getFloat(1, select);
      maxVal = myTable.getFloat(1, select);
  
        float[] values = new float[myTable.getRowCount()];
  
  
       for (int i = 0; i < myTable.getRowCount(); i++)
      {
          values[i] = myTable.getFloat(i, select);
        
          if (myTable.getFloat(i, select) < minVal)
              minVal = myTable.getFloat(i, select);
          else if (myTable.getFloat(i, select) > maxVal)
              maxVal = myTable.getFloat(i, select);
      
             if (i + 1 == myTable.getRowCount())
          { 
            for (int j = 0; j < myTable.getRowCount(); j++)
            {
                float xMap = map(j, 0, myTable.getRowCount(), xAxis1,  xAxis2);
                xAux[j] = xMap;
                float yMap = map(values[j], minVal, maxVal, yAxis1, yAxis2 + ((maxVal - minVal)/8));
                yAux[j] = yMap;
     
                ellipse(xMap, yMap, width * 0.005, height * 0.005); 
                
                lineMapX[j] = xMap;
                lineMapY[j] = yMap;
            
                if (j > 0)
                  line(xAux[j - 1], yAux[j - 1], xAux[j], yAux[j]);
            }      
          }
      
  
      }
  
     textAlign(RIGHT);
     text(maxVal, xAxis1, yAxis2);
     text(minVal, xAxis1, yAxis1);
     text(  ((maxVal-minVal)/2 ) + minVal,xAxis1, height * 0.15);
     
     textAlign(CENTER);  
  
  
  
  }

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
