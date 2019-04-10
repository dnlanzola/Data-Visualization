class Corrgram extends Frame {

  Table data;
    String useColumn;

    Corrgram( Table _data, String _useColumn ) {
      data = _data;
      useColumn = _useColumn;
      correlation = new float[16];
      
    }
  
    void setColumn( String _useColumn ){
      useColumn = _useColumn;
    }

    void draw() {  

      float xAxis1 = width * 0.05;
      float xAxis2 = width * 0.48;
      float xAux = (xAxis2 - xAxis1) / 4;
      float xPos = xAxis1;
      float yAxis1 = height * 0.97;
      float yAxis2 = height * 0.62;
      float yAux = (yAxis1 - yAxis2) / 4;
      float yPos = yAxis2 + yAux;

      
      
      int aux = 1;
      
  for (int i = 0 ; i < myTable.getColumnCount() * 4 ; i++)
  {
    if (i % 5 == 0)
      correlation[i] = 1;
    else if (i % 4 == 0)
    {
      correlation[i] = getPearson(aux, 0);
      aux++;
    }
    else
    {
      switch(i)
      {
        case 1:
        correlation[i] = getSpearman(0, 1);
        break;
                    
        case 2:
        correlation[i] = getSpearman(0, 1);
        break;
                
        case 3:
        correlation[i] = getSpearman(0, 3);
        break;
        
        case 6:
        correlation[i] = getSpearman(1, 2);
        break;
        
        case 7:
        correlation[i] = getSpearman(1, 3);
        break;
        
        case 9:
        correlation[i] = getPearson(2, 1);
        break;
        
        case 11:
        correlation[i] = getSpearman(2, 3);
        break;
        
        case 13:
        correlation[i] = getPearson(3, 1);
        break;
        
        case 14:
        correlation[i] = getPearson(3, 2); 
        break;
      }
      
    }
  }
  
  // LABELS
        fill(0);
        text(myTable.getColumnTitle(0), width * 0.10, height * 0.6);
        text(myTable.getColumnTitle(1), width * 0.21, height * 0.6);
        text(myTable.getColumnTitle(2), width * 0.32, height * 0.6);
        text(myTable.getColumnTitle(3), width * 0.42, height * 0.6);
        text(myTable.getColumnTitle(0), width * 0.02, height * 0.66);
        text(myTable.getColumnTitle(1), width * 0.02, height * 0.76);
        text(myTable.getColumnTitle(2), width * 0.02, height * 0.84);
        text(myTable.getColumnTitle(3), width * 0.02, height * 0.92);
  
  for (int i = 0; i < myTable.getColumnCount() * 4; i++)
  {
    
    if (i == 4 || i == 8 || i == 12)
    {
      xPos = xAxis1;
      yPos += yAux;
    }
    
    if (correlation[i] == 0)
    {
      fill(255, 198, 255);
      ellipse(xPos + (xAux / 2), yPos - (yAux / 2), width * 0.1, height * 0.015);
    }
    else if (correlation[i] > 0 && correlation[i] <= 0.25)
    {
      fill(210, 179, 249);
      ellipse(xPos + (xAux / 2), yPos - (yAux / 2), width * 0.11, height * 0.04);
    }
    else if (correlation[i] >= 0.25 && correlation[i] <= 0.5)
    {
      fill(179, 122, 249);
      ellipse(xPos + (xAux / 2), yPos - (yAux / 2), width * 0.11, height * 0.05);
    }
    else if (correlation[i] >= 0.5 && correlation[i] <= 0.75)
    {
      fill(140, 56, 244);
      ellipse(xPos + (xAux / 2), yPos - (yAux / 2), width * 0.11, height * 0.07);
    }
    else if (correlation[i] >= 0.75 && correlation[i] <= 1)
    {
      fill(111, 0, 255);
      ellipse(xPos + (xAux / 2), yPos - (yAux / 2), width * 0.11, height * 0.08);
    }
    

    fill(0);
    text(correlation[i], xPos + (xAux / 2), yPos - (yAux / 2));
    xPos += xAux;

  }
  
      
}

  void mousePressed() {  }

  void mouseReleased() {   }
  
  float getAverage(int col)
  {
    float sum = 0;
    float average = 0;
  
    for (int i = 0; i < myTable.getRowCount(); i++)
      sum += myTable.getFloat(i, col);
  
    average = sum / myTable.getRowCount();
  
    return average;
  }  
  
  
  
  float getStdDev(int col)
  {
    float dev = 0;
    float stdDev = 0;
    
    for (int i = 0; i < myTable.getRowCount(); i++)
      dev += sq(myTable.getFloat(i, col) - getAverage(col));
    
    stdDev = sqrt(dev / (myTable.getRowCount() - 1));
    
    return stdDev;
  }

  float getCovariance(int colA, int colB)
  {
    float cov = 0;
    float covar = 0;
    
    for (int i = 0; i < myTable.getRowCount(); i++)
      cov += ((myTable.getFloat(i, colA) - getAverage(colA)) * (myTable.getFloat(i, colB) - getAverage(colB)));
  
    covar = cov / (myTable.getRowCount() - 1);
    
    return covar;
  }

  float getPearson(int colA, int colB)
  {
    float pearson = 0;
    pearson = getCovariance(colA, colB) / (getStdDev(colA) * getStdDev(colB));
    return pearson;
  }

  float getSpearman(int colA, int colB)
  {
    float spearman = 0;
    float aux = 0;
    float x = 0;
    float y = 0;
    
    for (int i = 0; i < myTable.getRowCount(); i++)
    {  
      aux += ((myTable.getFloat(i, colA) - getAverage(colA)) * (myTable.getFloat(i, colB) - getAverage(colB)));
      x += sq(myTable.getFloat(i, colA) - getAverage(colA));
      y += sq(myTable.getFloat(i, colB) - getAverage(colB));
    }
  
    spearman = (aux / (x * y));
    
    return spearman;
}


}
