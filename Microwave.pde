  import processing.core.PFont;
  import processing.sound.*;
  import controlP5.*;


      PFont f;
      ControlP5 cp5;
      SoundFile file;
      int minVal = 0;
      int secVal = 0;
      int totalSec = 0;
      float a = 0;
      
      int knobValue = 100;
      Knob myKnobMIN;
      Knob myKnobSEC;
      
      Button Start;
      Button Stop;
      Button Open;

      int onesecond = 1000;
      int time;
      //DecimalFormat df;

      int X_AXIS = 2;
      
      
        
      // method for setting the size of the window
      public void settings(){
          size(1500, 800, P3D);
      }
//
      // identical use to setup in Processing IDE except for size()
      public void setup(){
      //Microwave Base Color
        background(255);
        time=millis();
//        int minVal = 0;
//        int secVal = 30;
        //df = new DecimalFormat();
        //df.setMaximumFractionDigits(0);
        cp5 = new ControlP5(this);
        f = createFont("Arial",20);
        
        myKnobMIN = cp5.addKnob("Minutes")
                  .setRange(0,60)
                  .setPosition(1060,80)
                  .setRadius(60)
                  .setNumberOfTickMarks(60)
                  .setTickMarkLength(4)
                  .snapToTickMarks(true)
                  .setColorForeground(color(255))
                  .setColorBackground(color(0))
                  .setColorActive(color(255,255,0))
                  .setDragDirection(Knob.HORIZONTAL);   
        
        
        myKnobMIN.getValueLabel().setFont(f);
        myKnobMIN.getCaptionLabel().setFont(f);
        myKnobMIN.setOffsetAngle(-HALF_PI);

       
        myKnobSEC = cp5.addKnob("Seconds")
                     .setRange(0,60)
                     .setValue(secVal)
                     .setPosition(1220,80)
                     .setRadius(60)
                     .setNumberOfTickMarks(60)
                     .setTickMarkLength(4)
                     .snapToTickMarks(true)
                     .setColorForeground(color(255))
                     .setColorBackground(color(0))
                     .setColorActive(color(255,255,0))
                     .setDragDirection(Knob.HORIZONTAL);
        
        myKnobSEC.getValueLabel().setFont(f);
        myKnobSEC.getCaptionLabel().setFont(f);
        myKnobSEC.setOffsetAngle(-HALF_PI);
  //      time= millis();
//        printArray(PFont.list());
//        f = createFont("SourceCodePro-Regular.ttf", 24);
//        textFont(f);
//        textAlign(CENTER, CENTER);
        
        Start = cp5.addButton("Start")
        .setValue(0)
        .setPosition(1060,675)
        .setSize(135,50)
        .setColorActive(color(0, 153, 153))
        .setColorForeground(0)
        ;
        
        Start.getCaptionLabel().setFont(f);
        //Start.setColorActive(color(0, 153, 153)); // color for mouse-over
        Start.setColorBackground(color(0)); // default color
        
        Stop = cp5.addButton("Stop")
        .setValue(0)
        .setPosition(1205,675)
        .setSize(135,50)
        .setColorActive(color(0, 153, 153))
        .setColorForeground(0)
        ;
        
        Stop.getCaptionLabel().setFont(f);
      //Stop.setColorActive(color(0, 153, 153)); // color for mouse-over
        Stop.setColorBackground(color(0)); // default color
        
        
        Open = cp5.addButton("Open")
                .setValue(0)
                .setPosition(1000,300)
                .setSize(50,200)
                .setColorActive(color(0, 153, 153))
                .setColorForeground(0)
                ;
        Open.getCaptionLabel().setFont(f);
        //Open.setColorActive(color(0, 153, 153)); // color for mouse-over
        Open.setColorBackground(color(0)); // default color
        
        //Color c1 = new Color(0, 153, 0);
        //Color c2= new Color(0, 0, 204);
        
        //color c1 = color(0, 153, 0);
        //color c2 = color(0, 0, 204);
        
      }

      // identical use to draw in Processing IDE
      public void draw(){    
        // Draw Frame
        
        //Border weights and Line
        strokeWeight(4);            //stroke weight of microwave boundaries
        stroke(0);                //color of stroke
        //Outside Frame
        fill(0, 51, 51);            //turquoise color
        rect(150, 50, 1200, 700);        //microwave dimensions
          
        //Border of window pane
        fill(255);
        rect(195, 95, 760, 610);
          
          //Window Pane
          fill(0);
          rect(200, 100, 750, 600);
          
          //Random Line
//          stroke(0, 51, 82);
//          strokeWeight(15);
//          line(300, 123, 150, 294);
          
          //Right Divider Line (Vertical)
          stroke(0);
          strokeWeight(4);
          line(1050, 50, 1050, 750);
         
          
//          //Open Button
//          fill(0);
//          rect(1000, 300, 50, 200);
          
          //Open Text
          fill(255);
          textSize(40);
          text("O", 1010, 338); 
          text("P", 1010, 388);
          text("E", 1010, 438);
          text("N", 1010, 488);
          
          //Line divider under knobs
          stroke(0);
          strokeWeight(4);
          line(1050, 250, 1350, 250);
          
          //AUTO SELECTIONS
          textSize(24);
          text("AUTO COOK SELECTIONS", 1055, 290); 
          fill(0, 102, 153);
          
          
          //Knobs
//          strokeWeight(1);
//          fill(153);
//          star(1125, 150, 5, 65, 60);
//          star(1275, 150, 5, 65, 60);
         
          
          //KNOB
          //background(myColorBackground);
          //fill((int)knobValue);
          //rect(0,height/2,width,height/2);
          //fill(0,100);
          //rect(80,40,140,320);
          
          //Circle
//          //size(200, 200);
//          smooth();
//          noStroke();
//          //background(0);
//          ellipseMode(CENTER);
//          ellipse(width/2, height/2 ,180, 180);
        
          //Knob
          for (int i = 0; i < 255; i++) {
            fill(i);
            //ellipse();
            noStroke();
          
      }
          //println(myKnobMIN.getValue());
          //println(myKnobSEC.getValue());
         // secVal = (int)myKnobSEC.getValue();
          
//          if ((secVal > 0 || minVal > 0) && (millis()-time)>= onesecond) //myKnobSEC.getValue() > 0)      // && Start button is pressed&& myKnobSEC.getValue() != 0
//          {
//            totalSec = (minVal * 60) + secVal;
//            
//            while(totalSec != secVal && secVal != 0)
//            {
//              totalSec--;
//              secVal--;
//              
//              if (secVal == 0 && totalSec > 60)
//              {
//                minVal--;
//                
//                if(secVal != 0)
//                {
//                  secVal--;
//                  
//                }
//                
//              }
//            }
//            
//            
//            
//            println(secVal);
//            secVal--;
//            //delay(500);
//            myKnobSEC.setValue(secVal);
//            time=millis();
//            
//          }
          
          if (totalSec > 0 && (millis() - time) >= onesecond) {
          
            secVal -= 1;
            totalSec--;
            println(secVal);
            //secVal--;
            if(secVal <= 0) {
              if(minVal == 0) {
                
              }
              else {
                minVal--;
                secVal = 60;
              }
            }
            myKnobMIN.setValue(minVal);
            myKnobSEC.setValue(secVal);
            time = millis();  
            
          }
          
          
//          setGradient(50, 190, 540, 80, c2, c1, X_AXIS);
          
          
  }
      
      
//      while (secVal > 0) //myKnobSEC.getValue() > 0)      // && Start button is pressed&& myKnobSEC.getValue() != 0
//        {
//          secVal--;
//          delay(500);
//          myKnobSEC.setValue(secVal);
//        }

      
      
      void star(int x, int y, int radius1, int radius2, int npoints) {
          float angle = TWO_PI / npoints;
          float halfAngle = (float) (angle/2.0);
          beginShape();
          for (float a = 0; a < TWO_PI; a += angle) {
            float sx = x + cos(a) * radius2;
            float sy = y + sin(a) * radius2;
            vertex(sx, sy);
            sx = x + cos(a+halfAngle) * radius1;
            sy = y + sin(a+halfAngle) * radius1;
            vertex(sx, sy);
          }
          endShape(CLOSE);
        }
      
      
      void knob(int theValue) {
          //myColorBackground = color(theValue);
          println("a knob event. setting background to "+theValue);
          
//          while (myKnobSEC.getValue() > 0)      // && Start button is pressed&& myKnobSEC.getValue() != 0
//              {
//                myKnobSEC.setValue(myKnobSEC.getValue() - 1);
//              }
        }
      
      
      public void Start(int theValue) {
          println("a button event from Start: "+theValue);
          //c1 = c2;
          //c2 = color(0,160,100);
          minVal = (int)myKnobMIN.getValue();
          secVal = (int)myKnobSEC.getValue();
          totalSec = secVal + (minVal * 60);
        }
      
      public void Stop(int theValue) {
          println("a button event from Start: "+theValue);
          //c1 = c2;
          //c2 = color(0,160,100);
          secVal = 0;
          minVal = 0;
          totalSec = 0;
          myKnobMIN.setValue(0);
          myKnobSEC.setValue(0);
          
        }
      
      
//      void setGradient(int x, int y, float w, float h, Color c1, Color c2, int axis ) {
//
//          noFill();
//
//          //if (axis == Y_AXIS) {  // Top to bottom gradient
//          //  for (int i = y; i <= y+h; i++) {
//          //    float inter = map(i, y, y+h, 0, 1);
//          //    color c = lerpColor(c1, c2, inter);
//          //    stroke(c);
//          //    line(x, i, x+w, i);
//          //  }
//          //}  
//          if (axis == X_AXIS) {  // Left to right gradient
//            for (int i = x; i <= x+w; i++) {
//              float inter = map(i, x, x+w, 0, 1);
//              Color c =  new Color(c1, c2, inter);
//              stroke(c);
//              line(i, y, i, y+h);
//            }
//          }
//        }
      
//      public void Open(int theValue) {
//        pushMatrix();
//          translate(-.2, 0, 0);
//          rotateY(a);
//          translate(.2, 0, 0);
//          fill(0, 0, 128);
//          scale(.4, 1, .1);
//          box(1);
//          popMatrix();
//        }

      
//      public Knob update()  {
//        
//      }

//         public void keyPressed() {
//          switch(key) {
//            case('1'):myKnobSEC.setValue(30);break;
//            case('2'):myKnobSEC.setConstrained(false).hideTickMarks().snapToTickMarks(false);break;
//            case('3'):myKnobMIN.shuffle();myKnobSEC.shuffle();break;
//          }
//        }
      
      
      

          
          
          
          
          
          
          
          
        //LETTERING
//       // Set the left and top margin
//          int margin = 10;
//          translate(margin*4, margin*4);
//
//          int gap = 46;
//          int counter = 35;
//          
//          for (int y = 0; y < height-gap; y += gap) {
//            for (int x = 0; x < width-gap; x += gap) {
//
//              char letter = char(counter);
//              
//              if (letter == 'A' || letter == 'E' || letter == 'I' || letter == 'O' || letter == 'U') {
//                fill(255, 204, 0);
//              } 
//              else {
//                fill(255);
//              }
//
//              // Draw the letter to the screen
//              text(letter, x, y);
//
//              // Increment the counter
//              counter++;
//            }
//          }        
          
          
          
          
//         public void setup(){
//             size(1500, 800);
//          }

      
      //MICROWAVE DRAWING
//      //__________________________________________________________________________
//         public void draw(){ 
//            background(0);
//
//            fill(120);
//            //strokeWeight(2.8181818);
//            //stroke(0);
//            //pushMatrix();
//            //translate(143.88776, 144.2854);
//            //rotate(5.195439E-4);
//            //rectMode(CORNERS);
//            rect(-97.70506, -97.70506, 1295.2578, 604.41235);
//            //popMatrix();
//
//            fill(0);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(157.52101, 153.37424);
//            rotate(0.0016156388);
//            rectMode(CORNERS);
//            rect(-67.06871, -63.621883, 891.8436, 549.4159);
//            popMatrix();
//
//            strokeWeight(2.8181818);
//            stroke(0);
//            line(1153.8855, 749.8296, 1155.0216, 46.580322);
//            fill(0);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1150.4772, 319.24564);
//            rotate(0.0);
//            rectMode(CORNERS);
//            rect(-55.66913, -55.66913, 3.4082642, 125.15739);
//            popMatrix();
//
//            fill(0);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1224.3241, 120.42718);
//            rotate(0.0);
//            ellipse(0,0,118.504036, 118.504036);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1224.3241, 120.42718);
//            rotate(-0.02647718);
//            ellipse(0,0,99.19963, 99.19963);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1372.0178, 120.42718);
//            rotate(0.0);
//            ellipse(0,0,118.504036, 118.504036);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1370.8817, 119.29108);
//            rotate(-0.026617527);
//            ellipse(0,0,99.19963, 99.19963);
//            popMatrix();
//
//            strokeWeight(3.5619836);
//            stroke(0);
//            line(1156.1577, 210.17952, 1437.9119, 210.17952);
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1218.6436, 320.38174);
//            rotate(0.0);
//            rectMode(CORNERS);
//            rect(-47.71643, -31.831257, 72.71969, 24.100437);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1351.5679, 319.24564);
//            rotate(-1.5807152E-4);
//            rectMode(CORNERS);
//            rect(-47.71643, -31.831257, 72.71969, 25.631714);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1219.7797, 394.2286);
//            rotate(0.0);
//            rectMode(CORNERS);
//            rect(-47.71643, -31.831257, 72.71969, 24.100437);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1352.704, 394.2286);
//            rotate(0.0);
//            rectMode(CORNERS);
//            rect(-47.71643, -31.831257, 72.71969, 24.100437);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1219.7797, 469.21155);
//            rotate(0.0);
//            rectMode(CORNERS);
//            rect(-47.71643, -31.831257, 72.71969, 24.100437);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1353.8401, 468.07544);
//            rotate(-7.766485E-4);
//            rectMode(CORNERS);
//            rect(-47.71643, -31.831257, 72.71969, 24.100437);
//            popMatrix();
//
//            strokeWeight(3.5619836);
//            stroke(0);
//            line(1155.0216, 510.11136, 1436.7758, 510.11136);
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1284.5377, 561.2361);
//            rotate(0.0);
//            rectMode(CORNERS);
//            rect(-113.6106, -35.383835, 140.87708, 40.02257);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1295.8987, 638.4913);
//            rotate(0.0);
//            ellipse(0,0,266.00394, 29.538696);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1218.6436, 708.9298);
//            rotate(0.0);
//            rectMode(CORNERS);
//            rect(-47.71643, -31.831257, 72.71969, 24.100437);
//            popMatrix();
//
//            fill(-1);
//            strokeWeight(3.5619836);
//            stroke(0);
//            pushMatrix();
//            translate(1353.8401, 708.9298);
//            rotate(0.0);
//            rectMode(CORNERS);
//            rect(-47.71643, -31.831257, 72.71969, 24.100437);
//            popMatrix();
//
//          }
//          
//      private void ellipse(int i, int j, double d, double e) {
//      // TODO Auto-generated method stub
//      
//    }
//
//    private void line(double d, double e, double f, double g) {
//      // TODO Auto-generated method stub
//      
//    }
//
//    private void strokeWeight(double d) {
//      // TODO Auto-generated method stub
//      
//    }
//
//    private void rect(double d, double e, double f, double g) {
//      // TODO Auto-generated method stub
//      
//    }
//
//
//    private void translate(double d, double e) {
//      // TODO Auto-generated method stub
//      
//    }
//
//    private void rotate(double d) {
//      // TODO Auto-generated method stub
//      
//    }
//      
//} 
//
////_______--_______-________________________________________________________________



/*    MICROWAVE FOUNDATION

void setup(){
   size(1500, 800);
}

void draw(){ 
  background(-263191);

  fill(-1);
  strokeWeight(10.0);
  stroke(0);
  pushMatrix();
  translate(180.0, 195.0);
  rotate(-6.293472);
  rectMode(CORNERS);
  rect(-113.02945, -131.85742, 1250.4489, 566.07196);
  popMatrix();

  fill(-1);
  strokeWeight(10.0);
  stroke(0);
  pushMatrix();
  translate(150.0, 135.0);
  rotate(0.0);
  rectMode(CORNERS);
  rect(-24.44766, -24.44766, 875.5548, 549.1901);
  popMatrix();

  strokeWeight(10.0);
  stroke(0);
  line(1155.0, 60.0, 1155.0, 750.0);
  strokeWeight(10.0);
  stroke(0);
  line(1155.0, 225.0, 1425.0, 225.0);
  strokeWeight(10.0);
  stroke(0);
  line(1155.0, 600.0, 1425.0, 600.0);
  fill(-1);
  strokeWeight(10.0);
  stroke(0);
  pushMatrix();
  translate(1230.0, 135.0);
  rotate(0.0);
  ellipse(0,0,89.30158, 90.75101);
  popMatrix();

  fill(-1);
  strokeWeight(10.0);
  stroke(0);
  pushMatrix();
  translate(1350.0, 135.0);
  rotate(0.0);
  ellipse(0,0,89.30158, 90.75101);
  popMatrix();

  fill(-1);
  strokeWeight(10.0);
  stroke(0);
  pushMatrix();
  translate(1230.0, 285.0);
  rotate(0.0);
  rectMode(CORNERS);
  rect(-47.067204, -16.602724, 23.551249, 9.176575);
  popMatrix();

  fill(-1);
  strokeWeight(10.0);
  stroke(0);
  pushMatrix();
  translate(1110.0, 405.0);
  rotate(1.5707964);
  rectMode(CORNERS);
  rect(-90.068, -41.625088, 69.90085, 9.960123);
  popMatrix();

}

*/


/* KNOB //////////////////////////      
      public void stick1_change1(GStick source, GEvent event) { //_CODE_:stick1:714525:
          println("stick1 - GStick >> GEvent." + event + " @ " + millis());
        } //_CODE_:stick1:714525:

        public void knob1_turn1(GKnob source, GEvent event) { //_CODE_:knob1:257037:
          println("knob1 - GKnob >> GEvent." + event + " @ " + millis());`  
        } //_CODE_:knob1:257037:



        // Create all the GUI controls. 
        // autogenerated do not edit
        public void createGUI(){
          G4P.messagesEnabled(false);
          G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
          G4P.setMouseOverEnabled(false);
          surface.setTitle("Sketch Window");
          stick1 = new GStick(this, 130, 90, 60, 60);
          stick1.setMode(G4P.X4);
          stick1.setOpaque(false);
          stick1.addEventHandler(this, "stick1_change1");
          knob1 = new GKnob(this, 209, 89, 60, 60, 0.8);
          knob1.setTurnRange(0, 360);
          knob1.setTurnMode(GKnob.CTRL_HORIZONTAL);
          knob1.setSensitivity(1);
          knob1.setShowArcOnly(false);
          knob1.setOverArcOnly(false);
          knob1.setIncludeOverBezel(false);
          knob1.setShowTrack(true);
          knob1.setLimits(0.5, 0.0, 1.0);
          knob1.setNbrTicks(60);
          knob1.setShowTicks(true);
          knob1.setOpaque(false);
          knob1.addEventHandler(this, "knob1_turn1");
        }

        // Variable declarations 
        // autogenerated do not edit
        GStick stick1; 
        GKnob knob1; 

  }
  */
