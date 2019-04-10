class Parallel extends Frame {

  Table data;
  String useColumn;
  ArrayList<ParallelAxis> axis = new ArrayList<ParallelAxis> ();

  Parallel( Table _data, String _useColumn ) {
    data = _data;
    useColumn = _useColumn;
      parallelMapX1 = new float[myTable.getRowCount()];
      parallelMapY1 = new float[myTable.getRowCount()];
      parallelMapX2 = new float[myTable.getRowCount()];
      parallelMapY2 = new float[myTable.getRowCount()];

  }
  void setColumn( String _useColumn ){
    useColumn = _useColumn;
  }

  void draw() 
  {

    if (keyParallel == 0)
    {
      axis.clear();
      axis.add( new ParallelAxis( myTable.getColumnTitle(0) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(1) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(2) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(3) ) );
      textSize(12);
      text("SATM", width*0.52, height*0.52);
      text("SATV", width*0.67, height*0.52);
      text("ACT", width*0.83, height*0.52);
      text("GPA", width*0.98, height*0.52);

    }

    else if (keyParallel == 1)
    {
      axis.clear();
      axis.add( new ParallelAxis( myTable.getColumnTitle(1) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(0) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(2) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(3) ) );
      textSize(12);
      text("SATV", width*0.52, height*0.52);
      text("SATM", width*0.67, height*0.52);
      text("ACT", width*0.83, height*0.52);
      text("GPA", width*0.98, height*0.52);
    }

    else if (keyParallel == 2)
    {
      axis.clear();
      axis.add( new ParallelAxis( myTable.getColumnTitle(1) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(2) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(0) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(3) ) );
      text("SATV", width*0.52, height*0.52);
      text("ACT", width*0.67, height*0.52);
      text("SATM", width*0.83, height*0.52);
      text("GPA", width*0.98, height*0.52);
    }

    else if (keyParallel == 3)
    {
      axis.clear();
      axis.add( new ParallelAxis( myTable.getColumnTitle(1) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(2) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(3) ) );
      axis.add( new ParallelAxis( myTable.getColumnTitle(0) ) );
      text("SATV", width*0.52, height*0.52);
      text("ACT", width*0.67, height*0.52);
      text("GPA", width*0.83, height*0.52);
      text("SATM", width*0.98, height*0.52);       
    }  




    for( int i = 0; i < axis.size(); i++ )
    {
      int u = (int)map( i, 0, axis.size()-1, u0+20, u0+w-20 );
      axis.get(i).setPosition( u, v0, 10, h ); 
    }      


    for( int i = 0; i < axis.size(); i++ )
      axis.get(i).draw();
    

    strokeWeight(0.2);
    stroke(0);

    for( int i = 0; i < myTable.getRowCount(); i++ )
    {   
      float u0 = axis.get(0).getU(i);
      float v0 = axis.get(0).getV(i);
      for( int j = 1; j < axis.size(); j++ )
      {
        float u1 = axis.get(j).getU(i);
        float v1 = axis.get(j).getV(i);
        line( u0, v0, u1, v1 );
        u0 = u1;
        v0 = v1;
        parallelMapX1[i] = u0;
        parallelMapY1[i] = v0;
        parallelMapX2[i] = u1;
        parallelMapY2[i] = v1;
        
      }
    }

    strokeWeight(1);
  }

  void mousePressed() {  }

  void mouseReleased() {   }

  class ParallelAxis extends Frame
  {
    String attr;
    float [] data;
    float rmin, rmax;
    boolean selected = false;

    ParallelAxis( String attr ){
    this.attr = attr;
    data = myTable.getFloatColumn(attr);
    rmin = min(data);
    rmax = max(data);
  }


  float getU( int idx ){ return u0; }
  float getV( int idx ){
    return map( data[idx], rmin, rmax, v0+h-20, v0+20 );
  }

  void draw()
    {
    if( selected ){
    u0 = mouseX; 
    }

    strokeWeight(1);
    stroke(0);
    if( selected ) stroke( 255,0,0);
    line(u0,v0,u0,v0+h);

    }


  }

}
