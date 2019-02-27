

class Linechart extends Frame {

  Table data;
  String useColumn;
  int view = 0;

  Linechart( Table _data, String _useColumn ) {
    data = _data;
    useColumn = _useColumn;
  }
  
  void setColumn( String _useColumn ){
    useColumn = _useColumn;
  }

  void draw() {  
    
    // SETTING UP TITLE
    String title = "Calvin College";
    //for (int i = 0; i < 4; i++)
    //{
    //    title = title + myTable.getColumnTitles()[i];
    //    if (i <= 2)
    //       title = title + " vs "; 
    //    System.out.println(title);
    //}
    textSize(32);
    textAlign(CENTER);
    fill(0, 102, 153);
    text(title, width/2, height/12);
    
            stroke(0,0,0);
        // SETTING UP X-AXIS
        line(width / 10, ((height / 5) * 4), (width / 10) * 9.5, (height / 5) * 4);
        // SETTING UP Y-AXIS
        line(width / 10,((height / 5) * 4), width / 10, (height / 5) * 0.75);
    
    
    if (key == '1')
      view = 0;
     
    if (key == '2')
      view = 1;
      
    if (key == '3')
      view = 2;
      
    if (key == '4')
      view = 3;
    
    
    if (view == 0)
    {
        // SETTING UP LEGEND
        
        
          /* NAMES FOR LEGEND  */
          textSize(12);
          textAlign(LEFT);
          fill(0,0,0);
          text("SATM vs. SATV",(width/11)*10,40);
          text("SATM vs. ACT",(width/11)*10,60);
          text("SATM vs. GPA",(width/11)*10,80);
          
          /* COLORED SQUARES FOR LEGEND  */
          stroke(0);
          fill(0, 128, 255);
          rect((width/9)*8,30,10,10);
          fill(102, 204, 0);
          rect((width/9)*8,50,10,10);
          fill(205, 0, 0);
          rect((width/9)*8,70,10,10);   
        
        
        
        

        
        // SETTING UP SCALE X-AXIS
        IntList xScale = new IntList();
        int val = 0;
        
        for (int i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,0);
            
            if (!xScale.hasValue(val))
                xScale.append(val);
        }
        
        xScale.sort();
        
        textSize(10);
        fill(0, 0, 0);
        int i = 0;
        while ( i < xScale.size())
        {
           text(xScale.get(i), (width/ 8.5) + (i*20), (height / 6) * 5 ); 
           i = i + 2;
        }
    
        //////////////// SATM VS SATV /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        IntList yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,1);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        textSize(10);
        fill(0, 0, 0);
        i = 0;
        while ( i < xScale.size())
        {
           text( (yScale.get(i)) / 10, (height / 35) * 5 , (width/ 8.5) + (i*9)); 
           i = i + 3;
        }
        
        int minX = xScale.min();
        int minY = yScale.min();
        int maxX = xScale.max();
        int maxY = yScale.max();
        float valX = 0;
        float valY = 0;
        float valXp = 0;
        float valYp = 0;
        
        float startX = width / 10;
        float startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,0);
          valY = myTable.getFloat(i,1);
          valXp = myTable.getFloat(i-1,0);
          valYp = myTable.getFloat(i-1,1);
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(0, 128, 255);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }
    
      
      
        //////////////// SATM VS ACT /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,2);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        minX = xScale.min();
        minY = yScale.min();
        maxX = xScale.max();
        maxY = yScale.max();
        valX = 0;
        valY = 0;
        valXp = 0;
        valYp = 0;
        
        startX = width / 10;
        startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,0);
          valY = myTable.getFloat(i,2) * 20;
          valXp = myTable.getFloat(i-1,0);
          valYp = myTable.getFloat(i-1,2) * 20;
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(102, 204, 0);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }  
      
          //////////////// SATM VS GPA /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,3);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        minX = xScale.min();
        minY = yScale.min();
        maxX = xScale.max();
        maxY = yScale.max();
        valX = 0;
        valY = 0;
        valXp = 0;
        valYp = 0;
        
        startX = width / 10;
        startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,0);
          valY = myTable.getFloat(i,3) * 100;
          valXp = myTable.getFloat(i-1,0);
          valYp = myTable.getFloat(i-1,3) * 100;
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(205, 0, 0);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        } 
      }/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// END OF VIEW 0
      
      if (view == 1)
      {
        
                // SETTING UP LEGEND
        
        
          /* NAMES FOR LEGEND  */
          textSize(12);
          textAlign(LEFT);
          fill(0,0,0);
          text("SATV vs. SATM",(width/11)*10,40);
          text("SATV vs. ACT",(width/11)*10,60);
          text("SATV vs. GPA",(width/11)*10,80);
          
          /* COLORED SQUARES FOR LEGEND  */
          stroke(0);
          fill(0, 128, 255);
          rect((width/9)*8,30,10,10);
          fill(102, 204, 0);
          rect((width/9)*8,50,10,10);
          fill(205, 0, 0);
          rect((width/9)*8,70,10,10);   
        
                // SETTING UP SCALE X-AXIS
        IntList xScale = new IntList();
        int val = 0;
        
        for (int i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,1);
            
            if (!xScale.hasValue(val))
                xScale.append(val);
        }
        
        xScale.sort();
        
        textSize(10);
        fill(0, 0, 0);
        int i = 0;
        while ( i < (xScale.size() - 1))
        {
           text(xScale.get(i), (width/ 8.5) + (i*20), (height / 6) * 5 ); 
           i = i + 2;
        }
        
        //////////////// SATV VS SATM /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        IntList yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,0);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        textSize(10);
        fill(0, 0, 0);
        i = 0;
        //while ( i < xScale.size())
        //{
        //   text( (yScale.get(i)) / 10, (height / 35) * 5 , (width/ 8.5) + (i*9)); 
        //   i = i + 3;
        //}
        
        int minX = xScale.min();
        int minY = yScale.min();
        int maxX = xScale.max();
        int maxY = yScale.max();
        float valX = 0;
        float valY = 0;
        float valXp = 0;
        float valYp = 0;
        
        float startX = width / 10;
        float startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,1);
          valY = myTable.getFloat(i,0);
          valXp = myTable.getFloat(i-1,1);
          valYp = myTable.getFloat(i-1,0);
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(0, 128, 255);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }
    
      
      
        //////////////// SATV VS ACT /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,2);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        minX = xScale.min();
        minY = yScale.min();
        maxX = xScale.max();
        maxY = yScale.max();
        valX = 0;
        valY = 0;
        valXp = 0;
        valYp = 0;
        
        startX = width / 10;
        startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,1);
          valY = myTable.getFloat(i,2) * 20;
          valXp = myTable.getFloat(i-1,1);
          valYp = myTable.getFloat(i-1,2) * 20;
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(102, 204, 0);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }  
      
          //////////////// SATV VS GPA /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        yScale.clear();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,3);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        minX = xScale.min();
        minY = yScale.min();
        maxX = xScale.max();
        maxY = yScale.max();
        valX = 0;
        valY = 0;
        valXp = 0;
        valYp = 0;
        
        startX = width / 10;
        startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,1);
          valY = myTable.getFloat(i,3) * 100;
          valXp = myTable.getFloat(i-1,1);
          valYp = myTable.getFloat(i-1,3) * 100;
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(205, 0, 0);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }         
        
        
      } ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// END OF VIEW 1

         if (view == 2)
      {
        
                // SETTING UP LEGEND
        
        
          /* NAMES FOR LEGEND  */
          textSize(12);
          textAlign(LEFT);
          fill(0,0,0);
          text("ACT vs. SATV",(width/11)*10,40);
          text("ACT vs. SATM",(width/11)*10,60);
          text("ACT vs. GPA",(width/11)*10,80);
          
          /* COLORED SQUARES FOR LEGEND  */
          stroke(0);
          fill(0, 128, 255);
          rect((width/9)*8,30,10,10);
          fill(102, 204, 0);
          rect((width/9)*8,50,10,10);
          fill(205, 0, 0);
          rect((width/9)*8,70,10,10);   
        
                // SETTING UP SCALE X-AXIS
        IntList xScale = new IntList();
        int val = 0;
        
        for (int i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,2);
            
            if (!xScale.hasValue(val))
                xScale.append(val);
        }
        
        xScale.sort();
        
        textSize(10);
        fill(0, 0, 0);
        int i = 0;
        while ( i < (xScale.size() - 1))
        {
           text(xScale.get(i), (width/ 8.5) + (i*42), (height / 6) * 5 ); 
           i = i + 1;
        }
        
        //////////////// SATV VS SATM /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        IntList yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,0);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        textSize(10);
        fill(0, 0, 0);
        i = 0;
        //while ( i < xScale.size())
        //{
        //   text( (yScale.get(i)) / 10, (height / 35) * 5 , (width/ 8.5) + (i*9)); 
        //   i = i + 3;
        //}
        
        int minX = xScale.min();
        int minY = yScale.min();
        int maxX = xScale.max();
        int maxY = yScale.max();
        float valX = 0;
        float valY = 0;
        float valXp = 0;
        float valYp = 0;
        
        float startX = width / 10;
        float startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,2) * 20;
          valY = myTable.getFloat(i,0);
          valXp = myTable.getFloat(i-1,2) * 20;
          valYp = myTable.getFloat(i-1,0);
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(0, 128, 255);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }
    
      
      
        //////////////// SATV VS ACT /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,3);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        minX = xScale.min();
        minY = yScale.min();
        maxX = xScale.max();
        maxY = yScale.max();
        valX = 0;
        valY = 0;
        valXp = 0;
        valYp = 0;
        
        startX = width / 10;
        startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,2);
          valY = myTable.getFloat(i,3) * 100;
          valXp = myTable.getFloat(i-1,2);
          valYp = myTable.getFloat(i-1,3) * 100;
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(102, 204, 0);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }  
      
          //////////////// SATV VS GPA /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        yScale.clear();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,3);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        minX = xScale.min();
        minY = yScale.min();
        maxX = xScale.max();
        maxY = yScale.max();
        valX = 0;
        valY = 0;
        valXp = 0;
        valYp = 0;
        
        startX = width / 10;
        startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,2);
          valY = myTable.getFloat(i,3) * 10;
          valXp = myTable.getFloat(i-1,2);
          valYp = myTable.getFloat(i-1,3) * 10;
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(205, 0, 0);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }         
        
        
      } /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// END OF VIEW 2   
      
               if (view == 3)
      {
        
                // SETTING UP LEGEND
        
        
          /* NAMES FOR LEGEND  */
          textSize(12);
          textAlign(LEFT);
          fill(0,0,0);
          text("GPA vs. SATV",(width/11)*10,40);
          text("GPA vs. SATM",(width/11)*10,60);
          text("GPA vs. GPA",(width/11)*10,80);
          
          /* COLORED SQUARES FOR LEGEND  */
          stroke(0);
          fill(0, 128, 255);
          rect((width/9)*8,30,10,10);
          fill(102, 204, 0);
          rect((width/9)*8,50,10,10);
          fill(205, 0, 0);
          rect((width/9)*8,70,10,10);   
        
                // SETTING UP SCALE X-AXIS
        IntList xScale = new IntList();
        int val = 0;
        
        for (int i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,3);
            
            if (!xScale.hasValue(val))
                xScale.append(val);
        }
        
        xScale.sort();
        
        textSize(10);
        fill(0, 0, 0);
        int i = 0;
        while ( i < (xScale.size() - 1))
        {
           text(xScale.get(i), (width/ 8.5) + (i*80), (height / 6) * 5 ); 
           i = i + 1;
        }
        
        //////////////// SATV VS SATM /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        IntList yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,0);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        textSize(10);
        fill(0, 0, 0);
        i = 0;
        //while ( i < xScale.size())
        //{
        //   text( (yScale.get(i)) / 10, (height / 35) * 5 , (width/ 8.5) + (i*9)); 
        //   i = i + 3;
        //}
        
        int minX = xScale.min();
        int minY = yScale.min();
        int maxX = xScale.max();
        int maxY = yScale.max();
        float valX = 0;
        float valY = 0;
        float valXp = 0;
        float valYp = 0;
        
        float startX = width / 10;
        float startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,3);
          valY = myTable.getFloat(i,0);
          valXp = myTable.getFloat(i-1,3);
          valYp = myTable.getFloat(i-1,0);
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(0, 128, 255);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }
    
      
      
        //////////////// SATV VS ACT /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        yScale = new IntList();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,3);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        minX = xScale.min();
        minY = yScale.min();
        maxX = xScale.max();
        maxY = yScale.max();
        valX = 0;
        valY = 0;
        valXp = 0;
        valYp = 0;
        
        startX = width / 10;
        startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,3);
          valY = myTable.getFloat(i,1);
          valXp = myTable.getFloat(i-1,3);
          valYp = myTable.getFloat(i-1,1);
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(102, 204, 0);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }  
      
          //////////////// SATV VS GPA /////////////////////
    
        // SETTING UP SCALE Y-AXIS
        yScale.clear();
        val = 0;
        
        for (i = 0; i < myTable.getRowCount(); i++)
        {
            val = myTable.getInt(i,3);
            
            if (!yScale.hasValue(val))
                yScale.append(val);
        }
        
        yScale.sort();
        yScale.reverse();
        
        minX = xScale.min();
        minY = yScale.min();
        maxX = xScale.max();
        maxY = yScale.max();
        valX = 0;
        valY = 0;
        valXp = 0;
        valYp = 0;
        
        startX = width / 10;
        startY = ((height / 5));
        
        for (i = 1; i < myTable.getRowCount(); i++)
        {
          
          valX = myTable.getFloat(i,3);
          valY = myTable.getFloat(i,2) * 10;
          valXp = myTable.getFloat(i-1,3);
          valYp = myTable.getFloat(i-1,2) * 10;
          
          stroke(0, 0, 0);
          ellipse(startX + (i *3), startY + (valY / 3), 2,2);
          stroke(205, 0, 0);
          line(startX + ((i-1) *3),startY + (valYp / 3),startX + (i *3),startY + (valY / 3));
        }         
        
        
      } /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// END OF VIEW 3
  }

  void mousePressed() {  }

  void mouseReleased() {   }

}
