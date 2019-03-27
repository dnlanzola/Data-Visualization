class Splom extends Frame {

  Table data;
    String useColumn;

    Splom( Table _data, String _useColumn ) {
      data = _data;
      useColumn = _useColumn;
      sploomMapX1 = new float[myTable.getRowCount()];
      sploomMapY1 = new float[myTable.getRowCount()];
      sploomMapX2 = new float[myTable.getRowCount()];
      sploomMapY2 = new float[myTable.getRowCount()];
      sploomMapX3 = new float[myTable.getRowCount()];
      sploomMapY3 = new float[myTable.getRowCount()];
      sploomMapX4 = new float[myTable.getRowCount()];
      sploomMapY4 = new float[myTable.getRowCount()];
      sploomMapX5 = new float[myTable.getRowCount()];
      sploomMapY5 = new float[myTable.getRowCount()];
      sploomMapX6 = new float[myTable.getRowCount()];
      sploomMapY6 = new float[myTable.getRowCount()];
      sploomMapX7 = new float[myTable.getRowCount()];
      sploomMapY7 = new float[myTable.getRowCount()];
      sploomMapX8 = new float[myTable.getRowCount()];
      sploomMapY8 = new float[myTable.getRowCount()];
      sploomMapX9 = new float[myTable.getRowCount()];
      sploomMapY9 = new float[myTable.getRowCount()];
      sploomMapX10 = new float[myTable.getRowCount()];
      sploomMapY10 = new float[myTable.getRowCount()];
      sploomMapX11 = new float[myTable.getRowCount()];
      sploomMapY11 = new float[myTable.getRowCount()];
      sploomMapX12 = new float[myTable.getRowCount()];
      sploomMapY12 = new float[myTable.getRowCount()];
      
    }
  
    void setColumn( String _useColumn ){
      useColumn = _useColumn;
    }

    void draw() {  
    float [] lineVal, lineXVal, lineYVal, lineW, lineH;
        float  minVal, maxVal;
    
      // UP
      
        float xAxis1 = (width * 0) + 10 ;
      float xAxis2 =( width *0.166) - 10 ;
      float yAxis1 = (height * 0.75) - 0;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
      float yAxis2 = (height *0.50) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
       xAxis1 = (width * 0.166) + 10 ;
       xAxis2 = (width /3 ) - 10 ;
       yAxis1 = (height * 0.75) - 0;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
     ///////
     yAxis2 = (height * 0.5) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
        xAxis1 = (width /3) + 10 ;
        xAxis2 = (width *0.50 ) - 10 ;
       yAxis1 = (height * 0.75) - 0;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
     yAxis2 = (height * 0.5) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);

      ////////////////////////////////////////
    
        xAxis1 = (width * 0.50) + 20 ;
       xAxis2 =( width *0.66) - 10 ;
      yAxis1 = (height * 0.75) - 0;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
       yAxis2 = (height *0.50) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
       xAxis1 = (width * 0.66) + 20 ;
      xAxis2 = (width *0.82 ) - 10 ;
       yAxis1 = (height * 0.75) - 0;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
     yAxis2 = (height * 0.5) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
        xAxis1 = (width *0.82) + 10 ;
        xAxis2 = (width *1 ) - 20 ;
       yAxis1 = (height * 0.75) - 0;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
     yAxis2 = (height * 0.5) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
    

      // DOWN
    
       xAxis1 = (width * 0) + 10 ;
       xAxis2 =( width *0.166) - 10 ;
       yAxis1 = height - 10;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
       yAxis2 = (height * 0.75) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
       xAxis1 = (width * 0.166) + 10 ;
      xAxis2 = (width /3 ) - 10 ;
       yAxis1 = height - 10;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
     yAxis2 = (height * 0.75) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
         xAxis1 = (width /3) + 10 ;
      xAxis2 = (width *0.50 ) - 10 ;
       yAxis1 = height - 10;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
     yAxis2 = (height * 0.75) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
    ////////////////////////////////////////
  
  
        xAxis1 = (width * 0.50) + 20 ;
       xAxis2 =( width *0.66) - 10 ;
      yAxis1 = height - 10;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
       yAxis2 = (height * 0.75) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
       xAxis1 = (width * 0.66) + 20 ;
      xAxis2 = (width *0.82 ) - 10 ;
       yAxis1 = height - 10;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
     yAxis2 = (height * 0.75) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
        xAxis1 = (width *0.82) + 10 ;
      xAxis2 = (width *1 ) - 20 ;
       yAxis1 = height - 10;
      line (xAxis1, yAxis1, xAxis2, yAxis1);
      ///////
     yAxis2 = (height * 0.75) +20;
      line (xAxis1, yAxis1, xAxis1, yAxis2);
  
  
  
       int select = 0;

      minVal = myTable.getFloat(1, select);
      maxVal = myTable.getFloat(1, select);
  
        float[] values = new float[myTable.getRowCount()];
  
      float [] satm = new float[myTable.getRowCount()], satv = new float[myTable.getRowCount()], act = new float[myTable.getRowCount()], gpa = new float[myTable.getRowCount()];
  
      for (int j = 0; j < 4; j++)
      {
          for (int i = 0; i < myTable.getRowCount(); i++)
          {
            if (j == 0)
                satm[i] = myTable.getFloat(i, j);
            else if (j == 1)
                satv[i] = myTable.getFloat(i, j);
            else if (j == 2)
                act[i] = myTable.getFloat(i, j);
            else if (j == 3)
                gpa[i] = myTable.getFloat(i, j);
        }
      }
  
      float minX, minY, maxX, maxY;

 
  
      // SATM VS SATV
      minX = min(satm);
      maxX = max(satm);
      minY = min(satv);
      maxY = max(satv);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(satm[i], minX, maxX, (width * 0) + 10, (width / 6) - 10 );
      float yMap = map(satv[i], minY, maxY, height * 0.75, (height * 0.50) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX1[i] = xMap;
      sploomMapY1[i] = yMap;
      
      textSize(10);
      text("SATM vs SATV", width * 0.08, height * 0.765);
    } 

    // SATM VS ACT
    minX = min(satm);
    maxX = max(satm);
    minY = min(act);
    maxY = max(act);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(satm[i], minX, maxX, (width * 0.166) + 10, (width *0.34) - 10 );
      float yMap = map(act[i], minY, maxY, height * 0.75, (height * 0.50) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);

      sploomMapX2[i] = xMap;
      sploomMapY2[i] = yMap;
      
      textSize(10);
      text("SATM vs ACT", width * 0.25, height * 0.765);
    } 
    
    // SATM VS GPA 
    minX = min(satm);
    maxX = max(satm);
    minY = min(gpa);
    maxY = max(gpa);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(satm[i], minX, maxX, (width * 0.34) + 10, (width * 0.50) - 10 );
      float yMap = map(gpa[i], minY, maxY, height * 0.75, (height * 0.50) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX3[i] = xMap;
      sploomMapY3[i] = yMap;
      
      
      textSize(10);
      text("SATM vs GPA", width * 0.42, height * 0.765);
    }     

    // SATV VS SATM  
    minX = min(satv);
    maxX = max(satv);
    minY = min(satm);
    maxY = max(satm);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(satv[i], minX, maxX, (width * 0) + 10, (width / 6) - 10 );
      float yMap = map(satm[i], minY, maxY, (height * 1) -10 , (height * 0.75) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX4[i] = xMap;
      sploomMapY4[i] = yMap;
      
      
      textSize(10);
      text("SATV vs SATM", width * 0.08, height * 0.998);
    }     
  
    // SATV VS ACT  
    minX = min(satv);
    maxX = max(satv);
    minY = min(act);
    maxY = max(act);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(satv[i], minX, maxX, (width * 0.166) + 10, (width *0.34) - 10 );
      float yMap = map(act[i], minY, maxY, (height * 1) -10 , (height * 0.75) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX5[i] = xMap;
      sploomMapY5[i] = yMap;

      textSize(10);
      text("SATV vs ACT", width * 0.25, height * 0.998);  
}   
  
    // SATV VS GPA  
    minX = min(satv);
    maxX = max(satv);
    minY = min(gpa);
    maxY = max(gpa);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(satv[i], minX, maxX, (width * 0.34) + 10, (width * 0.50) - 10 );
      float yMap = map(gpa[i], minY, maxY, (height * 1) -10 , (height * 0.75) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX6[i] = xMap;
      sploomMapY6[i] = yMap;
 
      textSize(10);
      text("SATV vs GPA", width * 0.42, height * 0.998);   
}   
    
    
    // ACT VS SATM
    minX = min(act);
    maxX = max(act);
    minY = min(satm);
    maxY = max(satm);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(act[i], minX, maxX, (width * 0.50) + 20, (width * 0.66) - 10 );
      float yMap = map(satm[i], minY, maxY, height * 0.75, (height * 0.50) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX7[i] = xMap;
      sploomMapY7[i] = yMap;
      
      textSize(10);
      text("ACT vs SATM", width * 0.59, height * 0.765);        
    }     
    
    // ACT VS SATV
    minX = min(act);
    maxX = max(act);
    minY = min(satm);
    maxY = max(satm);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(act[i], minX, maxX, (width * 0.66) + 20, (width * 0.82) - 10 );
      float yMap = map(satv[i], minY, maxY, (height * 0.75)-25, (height * 0.50) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX8[i] = xMap;
      sploomMapY8[i] = yMap;
      
      textSize(10);
      text("ACT vs SATV", width * 0.75, height * 0.765);         
    }   
    
    
    // ACT VS GPA
    minX = min(act);
    maxX = max(act);
    minY = min(gpa);
    maxY = max(gpa);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(act[i], minX, maxX, (width * 0.82) + 20, (width * 1) - 10 );
      float yMap = map(gpa[i], minY, maxY, (height * 0.75)-25, (height * 0.50) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX9[i] = xMap;
      sploomMapY9[i] = yMap;
      
      textSize(10);
      text("ACT vs GPA", width * 0.90, height * 0.765);        
    }      
    
    // GPA VS SATV
    minX = min(gpa);
    maxX = max(gpa);
    minY = min(satv);
    maxY = max(satv);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(gpa[i], minX, maxX, (width * 0.50) + 20, (width * 0.66) - 10 );
      float yMap = map(satv[i], minY, maxY, (height * 1) -10 , (height * 0.75) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX10[i] = xMap;
      sploomMapY10[i] = yMap;

      textSize(10);
      text("GPA vs SATV", width * 0.59, height * 0.998);  
}  
  
    
    // GPA VS SATM
    minX = min(gpa);
    maxX = max(gpa);
    minY = min(satm);
    maxY = max(satm);

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(gpa[i], minX, maxX, (width * 0.66) + 20, (width * 0.82) - 10 );
      float yMap = map(satm[i], minY, maxY, (height * 1) -10 , (height * 0.75) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX11[i] = xMap;
      sploomMapY11[i] = yMap;

        textSize(10);
      text("GPA vs SATM", width * 0.75, height * 0.998); 
}  
   
   
    // GPA VS ACT
    minX = min(gpa);
    maxX = max(gpa);
    minY = min(act);
    maxY = max(act);   

    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      float xMap = map(gpa[i], minX, maxX, (width * 0.82) + 20, (width * 1) - 10 );
      float yMap = map(act[i], minY, maxY, (height * 1) -10 , (height * 0.75) + 30);
      ellipse(xMap, yMap, width * 0.003, height * 0.003);
      sploomMapX12[i] = xMap;
      sploomMapY12[i] = yMap;

      textSize(10);
      text("GPA vs SATV", width * 0.90, height * 0.998);   
}    
    
}

  void mousePressed() {  }

  void mouseReleased() {   }
  
}
