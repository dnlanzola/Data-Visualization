class Histogram extends Frame {

  Table data;
    String useColumn;

    Histogram( Table _data, String _useColumn ) {
      data = _data;
      useColumn = _useColumn;
        xHistogram1 = new float[myTable.getRowCount()];
        xHistogram2 = new float[myTable.getRowCount()];
        xHistogram3 = new float[myTable.getRowCount()];
        xHistogram4 = new float[myTable.getRowCount()];
        xAxisValues = new float[8];
        yHistogram0 = new int[16];
        yHistogram1 = new int[16];
        yHistogram2 = new int[16];
        yHistogram3 = new int[16];
        yHistogram4 = new int[16];
        correlation = new float[16];
      
    }
  
    void setColumn( String _useColumn ){
      useColumn = _useColumn;
    }

    void draw() {  


  float xAxisMin = width * 0.5;
  float xAxisMax = width * 0.99;
  float yAxisMin = height * 0.97;
  float yAxisMax = height * 0.59;
  float xAxisPer = (xAxisMin + xAxisMax) / 2.05;
  float yAxisPer = (yAxisMax + yAxisMin) / 2.05;
  float xAux1 = width * 0.51;
  float xAux2 = xAxisPer;
  float xAux3 = xAux1;
  float xAux4 = xAux2;
  float yAux1 = yAxisPer;
  float yAux2 = yAxisMax;
  float yAux3 = yAxisMin - (width * 0.005);
  float yAux4 = yAxisPer + (width * 0.02);



      textSize(10);
      fill(0);
      text(myTable.getColumnTitle(0), width * 0.62, height * 0.79);
      text(myTable.getColumnTitle(1), width * 0.88, height * 0.79);
      text(myTable.getColumnTitle(2), width * 0.62, height * 0.99); 
      text(myTable.getColumnTitle(3), width * 0.88, height * 0.99); 
      

  

  for (int j = 0; j < myTable.getColumnCount(); j++)
  {
    for (int i = 0; i < myTable.getRowCount(); i++)
    {
      if (j == 0)
        xHistogram1[i] = myTable.getFloat(i, j);
      else if (j == 1)
        xHistogram2[i] = myTable.getFloat(i, j);
      else if (j == 2)
        xHistogram3[i] = myTable.getFloat(i, j);
      else if (j == 3)
        xHistogram4[i] = myTable.getFloat(i, j);
      
      if (j == myTable.getColumnCount() - 1)
      {
        xMin1 = min(xHistogram1);
        xMax1 = max(xHistogram1);
        xMin2 = min(xHistogram2);
        xMax2 = max(xHistogram2);
        xMin3 = min(xHistogram3);
        xMax3 = max(xHistogram3);
        xMin4 = min(xHistogram4);
        xMax4 = max(xHistogram4);
      }
    }
  }

for (int j = 0; j < myTable.getColumnCount(); j++)
  {
 
    if (j > 1)
    {
      // x and y axis lines
      line(xAux3, yAux3, xAux4, yAux3);
      line(xAux3, yAux3, xAux3, yAux4);
      
      // x and y tick space
      xPer = (xAux4 - xAux3 + (width * 0.01)) / 8;
      yPer = (yAux3 - yAux4) / 8;
      
      if (j == 2)
      {
        xAxisValuesAux = xMin3;
        xPerAux = xMax3;

          yAxisValuesAux = 0;
          yPerAux = 80;

        minX = xAxisValuesAux;
        maxX = xPerAux;
        minY = yAxisValuesAux;
        maxY = yPerAux;
      }  
      else if (j == 3)
      {
        xAxisValuesAux = xMin4;
        xPerAux = xMax4;

          yAxisValuesAux = 0;
          yPerAux = 90;

        minX = xAxisValuesAux;
        maxX = xPerAux;
        minY = yAxisValuesAux;
        maxY = yPerAux;
      }
      

      xPer1 = (xPerAux - xAxisValuesAux) / 7;
      yPer1 = (yPerAux - yAxisValuesAux) / 7;
      

      int count = 0;
      for(float valX = xAux3 + (width * 0.01); valX < xAux4; valX += xPer)
      {

        textSize(8);
        fill(0);
        text(xAxisValuesAux, valX, yAux3 + (height * 0.015));
        

        xAxisValues[count] = xAxisValuesAux;
        
        if (count != 0)
        {
          for (int i = 0; i < myTable.getRowCount(); i++)
          {
            if (j == 2)
            {
              if ((xHistogram3[i] >= xAxisValues[count - 1]) && (xHistogram3[i] <= xAxisValues[count]))
                frequency++;
            }
            else if (j == 3)
            {
              if ((xHistogram4[i] >= xAxisValues[count - 1]) && (xHistogram4[i] <= xAxisValues[count]))
                frequency++;
            }
          }
          yHistogram0[count] = frequency;
          if (j == 2)
            yHistogram3[count] = frequency;
          else if (j == 3)
            yHistogram4[count] = frequency;
        }
        frequency = 0;
        
        xAxisValuesAux += xPer1;
        count++;
      }

      

      for(float valY = yAux3; valY > yAux4; valY -= yPer)
      {
        textSize(8);
        fill(0);
        text(yAxisValuesAux, xAux3 - (width * 0.009), valY);
        yAxisValuesAux += yPer1;
      }

      

      for (int i = 1; i < 8; i++)
      {
        float xMap = map(xAxisValues[i], minX, maxX, xAux3 - (width * 0.018), xAux4 - (width * 0.037));
        float yMap = map(yHistogram0[i], minY, maxY, yAux3, yAux4 + yPer1);
        
        if (j == 2)
        {
          mean3 += (xAxisValues[i - 1] * yHistogram0[i]);
          m3 += yHistogram3[i];
        }
        else if (j == 3)
        {
          mean4 += (xAxisValues[i - 1] * yHistogram0[i]);
          m4 += yHistogram4[i];
        }
        
        if (i == 7)
        {
          if (j == 2)
          {
            m3 /= 7;
            mean3 = mean3 / 271;
            for (int k = 1; k < 8; k++)
              dev3 += sq(xAxisValues[k - 1] - mean3);
            dev3 = sqrt(dev3 / 6);
            stdDev3Aux = String.format("%.1f", dev3);
          }
          else if (j == 3)
          {
            m4 /= 7;
            mean4 = mean4 / 271;
            for (int k = 1; k < 8; k++)
              dev4 += sq(xAxisValues[k - 1] - mean4);
            dev4 = sqrt(dev4 / 6);
            stdDev4Aux = String.format("%.1f", dev4);
          }
        }
        
        stroke(0);
        fill(255, 251, 38);
        rect(xMap, yMap, xPer, yAux3 - yMap);
        fill(0);
        stroke(0);
      }
      fill(0);
    }
  
  else
    {
      line(xAux1, yAux1, xAux2, yAux1);
      line(xAux1, yAux1, xAux1, yAux2);
      
      xPer = (xAux2 - xAux1 + (width * 0.01)) / 8;
      yPer = (yAux1 - yAux2) / 8;
      
      if (j == 0)
      {
        xAxisValuesAux = xMin1;
        xPerAux = xMax1;

          yAxisValuesAux = 0;
          yPerAux = 65;

        minX = xAxisValuesAux;
        maxX = xPerAux;
        minY = yAxisValuesAux;
        maxY = yPerAux;
      }
      else if (j == 1)
      {
        xAxisValuesAux = xMin2;
        xPerAux = xMax2;

          yAxisValuesAux = 0;
          yPerAux = 90;

        minX = xAxisValuesAux;
        maxX = xPerAux;
        minY = yAxisValuesAux;
        maxY = yPerAux;
      }
      
      xPer1 = (xPerAux - xAxisValuesAux) / 7;
      yPer1 = (yPerAux - yAxisValuesAux) / 7;
      
      int count = 0;
      for(float valX = xAux1 + (width * 0.01); valX < xAux2; valX += xPer)
      {
        textSize(8);
        fill(0);
        text(xAxisValuesAux, valX, yAux1 + (height * 0.015));
        
        xAxisValues[count] = xAxisValuesAux;
        
        if (count != 0)
        {
          for (int i = 0; i < myTable.getRowCount(); i++)
          {
            if (j == 0)
            {
              if (xHistogram1[i] >= xAxisValues[count - 1] && xHistogram1[i] <= xAxisValues[count])
                frequency++;
            }
            else if (j == 1)
            {
              if (xHistogram2[i] >= xAxisValues[count - 1] && xHistogram2[i] <= xAxisValues[count])
                frequency++;
            }
          }
          yHistogram0[count] = frequency;
          if (j == 0)
            yHistogram1[count] = frequency;
          else if (j == 1)
            yHistogram2[count] = frequency;
        }
        frequency = 0;
        
        xAxisValuesAux += xPer1;
        count++;
      }

     
      for(float valY = yAux1; valY > yAux2; valY -= yPer)
      {

        textSize(8);
        fill(0);
        text(yAxisValuesAux, xAux1 - (width * 0.009), valY);
        yAxisValuesAux += yPer1;
      }


      for (int i = 1; i < 8; i++)
      {
        float xMap = map(xAxisValues[i], minX, maxX, xAux1 - (width * 0.018), xAux2 - (width * 0.037));
        float yMap = map(yHistogram0[i], minY, maxY, yAux1, yAux2 + yPer1);
        
        if (j == 0)
        {
          mean1 += (xAxisValues[i - 1] * yHistogram0[i]);
          m1 += yHistogram1[i];
        }
        else if (j == 1)
        {
          mean2 += (xAxisValues[i - 1] * yHistogram0[i]);
          m2 += yHistogram2[i];
        }
        
        if (i == 7)
        {
          if (j == 0)
          {
            m1 /= 7;
            mean1 = mean1 / 271;
            for (int k = 1; k < 8; k++)
              dev1 += sq(xAxisValues[k - 1] - mean1);
            dev1 = sqrt(dev1 / 6);
            stdDev1Aux = String.format("%.2f", dev1);
          }
          else if (j == 1)
          {
            m2 /= 7;
            mean2 = mean2 / 271;
            for (int k = 1; k < 8; k++)
              dev2 += sq(xAxisValues[k - 1] - mean2);
            dev2 = sqrt(dev2 / 6);
            stdDev2Aux = String.format("%.2f", dev2);
          }
        }
        
        stroke(0);
        fill(255, 251, 38);
        rect(xMap, yMap, xPer, yAux1 - yMap);
        fill(0);
        stroke(0);
      }
      fill(0);
    }


    if (j > 1)
    {
      xAux3 = xAux4 + (width * 0.04);
      xAux4 = xAxisMax;
    }
    else
    {
      xAux1 = xAux2 + (width * 0.04);
      xAux2 = xAxisMax;
    }


}// end for loop(1st)
    fill(0);
    }




}// end draw
