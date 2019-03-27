
Table myTable = null;
Frame myBarchart = null;
Frame myLinechart = null;
Frame myScatterplot = null;
Frame mySplom = null;
Frame myParallel = null;
int keyBar = 0;
int keyParallel = 0;
int keyScatter = 0;
int mousePos = 0;



float barMapX[], barMapY[], barYAxis[], barWidth[], barHeight[];
float lineMapX[], lineMapY[], lineWidth[], lineHeight[];
float scatterMapX[], scatterMapY[];
float sploomMapX1[], sploomMapY1[];
float sploomMapX2[], sploomMapY2[];
float sploomMapX3[], sploomMapY3[];
float sploomMapX4[], sploomMapY4[];
float sploomMapX5[], sploomMapY5[];
float sploomMapX6[], sploomMapY6[];
float sploomMapX7[], sploomMapY7[];
float sploomMapX8[], sploomMapY8[];
float sploomMapX9[], sploomMapY9[];
float sploomMapX10[], sploomMapY10[];
float sploomMapX11[], sploomMapY11[];
float sploomMapX12[], sploomMapY12[];
float parallelMapX1[], parallelMapX2[], parallelMapY1[], parallelMapY2[];




void setup(){
  size(1200,700);  
  selectInput("Select a file to process:", "fileSelected");
}


void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
    selectInput("Select a file to process:", "fileSelected");
  } else {
    println("User selected " + selection.getAbsolutePath());
    myTable = loadTable( selection.getAbsolutePath(), "header" );
    myBarchart = new Barchart( myTable, myTable.getColumnTitles()[0] );
    myLinechart = new Linechart( myTable, myTable.getColumnTitles()[0] );
    myScatterplot = new Scatterplot( myTable, myTable.getColumnTitles()[0] );
    mySplom = new Splom( myTable, myTable.getColumnTitles()[0] );
    myParallel = new Parallel( myTable, myTable.getColumnTitles()[0] );
  }
}


void draw()
{
  background(244, 244, 244);
  
  // TITLE 
  textSize(18);
  fill(0);
  textAlign(CENTER);
  text("Calvin College Dataset", width * 0.5, height * 0.025);
  textSize(10);
  textAlign(LEFT);
  text("Press B and/or P to switch views.", width*0.025, height*0.025);
        //X1    Y1    X2      Y2
  //line (width/2, 0, width/2, height);
  //line (0, 20, width, 20);
  //line (0, 195, width, 195);
  //line (0, 370, width, 370);
  //line (0, 545, width, 545);
  //line (0, 720, width, 720);
  
  if( myTable == null ) 
    return;
  
  if( myBarchart != null ){
       myBarchart.setPosition( 0, 0, width, height );
       myBarchart.draw();
  }
  
    if( myLinechart != null ){
       myLinechart.setPosition( 0, 0, width, height );
       myLinechart.draw();
  }
  
      if( myScatterplot != null ){
       myScatterplot.setPosition( 0, 0, width, height );
       myScatterplot.draw();
       
      if( mySplom != null ){
       mySplom.setPosition( 0, 0, width, height );
       mySplom.draw();
       
        if( myParallel != null ){
       myParallel.setPosition( 600, 200, width/2,150);
       myParallel.draw();
        }
  }
      }
  
  
  
  
  
  
  
  
  
  
}


void keyPressed()
{
   if (key == 'b')
     ++keyBar;
     
   if (keyBar + 1 > myTable.getColumnCount())
     keyBar = 0;
     
   if (key == 'p'){
     ++keyParallel;
     myParallel.draw();
     println(keyParallel);
   }
     
     
   if (keyBar + 1 > myTable.getColumnCount())
     keyBar = 0;  
     
   if (keyParallel + 1 > myTable.getColumnCount())
     keyParallel = 0; 
     
  
}





void mouseReleased(){
  mousePressed();
}

void mousePressed()
{
    for (int i = 0; i < myTable.getRowCount(); i++)
  {
      if ((mouseX > (barMapX[i] - 1) && mouseX < (barMapX[i] + (width * 0.00001) + 1) && mouseY > (barMapY[i] - 1) && mouseY < (barMapY[i] + ((barYAxis[i] - barMapY[i]) + 1))))
          highlight(i);

      if ((mouseX > (lineMapX[i] - 1) && mouseX < (lineMapX[i] + (width * 0.005) + 1) && mouseY > (lineMapY[i] - 1) && mouseY < (lineMapY[i] + (height * 0.005) + 1)))
          highlight(i);

      if (mouseX > (scatterMapX[i] - 1) && mouseX < (scatterMapX[i] + (width * 0.003) + 1) && mouseY > (scatterMapY[i] - 1) && mouseY < (scatterMapY[i] + (height * 0.003) + 1))
          highlight(i);
  
      if (mouseX > (sploomMapX1[i] - 1) && mouseX < (sploomMapX1[i] + (height * 0.003) + 1) && mouseY > (sploomMapY1[i] - 1) && mouseY < (sploomMapY1[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX2[i] - 1) && mouseX < (sploomMapX2[i] + (height * 0.003) + 1) && mouseY > (sploomMapY2[i] - 1) && mouseY < (sploomMapY2[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX3[i] - 1) && mouseX < (sploomMapX3[i] + (height * 0.003) + 1) && mouseY > (sploomMapY3[i] - 1) && mouseY < (sploomMapY3[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX4[i] - 1) && mouseX < (sploomMapX4[i] + (height * 0.003) + 1) && mouseY > (sploomMapY4[i] - 1) && mouseY < (sploomMapY4[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX5[i] - 1) && mouseX < (sploomMapX5[i] + (height * 0.003) + 1) && mouseY > (sploomMapY5[i] - 1) && mouseY < (sploomMapY5[i] + (height * 0.003) + 1))
          highlight(i);
      
      if (mouseX > (sploomMapX6[i] - 1) && mouseX < (sploomMapX6[i] + (height * 0.003) + 1) && mouseY > (sploomMapY6[i] - 1) && mouseY < (sploomMapY6[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX7[i] - 1) && mouseX < (sploomMapX7[i] + (height * 0.003) + 1) && mouseY > (sploomMapY7[i] - 1) && mouseY < (sploomMapY7[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX8[i] - 1) && mouseX < (sploomMapX8[i] + (height * 0.003) + 1) && mouseY > (sploomMapY8[i] - 1) && mouseY < (sploomMapY8[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX9[i] - 1) && mouseX < (sploomMapX9[i] + (height * 0.003) + 1) && mouseY > (sploomMapY9[i] - 1) && mouseY < (sploomMapY9[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX10[i] - 1) && mouseX < (sploomMapX10[i] + (height * 0.003) + 1) && mouseY > (sploomMapY10[i] - 1) && mouseY < (sploomMapY10[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX11[i] - 1) && mouseX < (sploomMapX11[i] + (height * 0.003) + 1) && mouseY > (sploomMapY11[i] - 1) && mouseY < (sploomMapY11[i] + (height * 0.003) + 1))
          highlight(i);

      if (mouseX > (sploomMapX12[i] - 1) && mouseX < (sploomMapX12[i] + (height * 0.003) + 1) && mouseY > (sploomMapY12[i] - 1) && mouseY < (sploomMapY12[i] + (height * 0.003) + 1))
          highlight(i);
  }
  
  
}


void highlight(int i)
{

    strokeWeight(4);
    stroke(0,0,255);
    rect(barMapX[i], barMapY[i], width * 0.00001, barYAxis[i] - barMapY[i]); 
    ellipse(lineMapX[i], lineMapY[i], width * 0.005, height * 0.005); 
    ellipse(scatterMapX[i],scatterMapY[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX1[i], sploomMapY1[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX2[i], sploomMapY2[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX3[i], sploomMapY3[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX4[i], sploomMapY4[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX5[i], sploomMapY5[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX6[i], sploomMapY6[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX7[i], sploomMapY7[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX8[i], sploomMapY8[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX9[i], sploomMapY9[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX10[i], sploomMapY10[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX11[i], sploomMapY11[i], width * 0.003, height * 0.003);
    ellipse(sploomMapX12[i], sploomMapY12[i], width * 0.003, height * 0.003);
    line( parallelMapX1[i], parallelMapY1[i], parallelMapX2[i], parallelMapY2[i] );
    
    strokeWeight(1);
    stroke(0);
}


abstract class Frame {
  
  int u0,v0,w,h;
  int clickBuffer = 2;
     
  void setPosition( int u0, int v0, int w, int h ){
    this.u0 = u0;
    this.v0 = v0;
    this.w = w;
    this.h = h;
  }
  
  abstract void draw();
  void mousePressed(){ }
  void mouseReleased(){ }
  
  
  boolean mouseInside(){
     return (u0-clickBuffer < mouseX) && (u0+w+clickBuffer)>mouseX && (v0-clickBuffer)< mouseY && (v0+h+clickBuffer)>mouseY; 
  }
  
  
}
