/*
 *  IcarP5 -> Demonstration with Rubine Algorithm
 * v. 1.0
 *   can import templates
 * 
 * (c) Ph. Truillet, November 2020
 * Last Revision: 06/11/2020
 * 
 * Rubine Gesture Recognizer - https://www.cs.cmu.edu/~music/papers/dean_rubine_thesis.pdf
*/

import javax.swing.*;

public enum FSM {
  INITIAL,
  RECOGNITION,
  HELP
}

RecoGeste RG;
PFont font;
PImage sketch_icon;
FSM mae;

void setup(){
  surface.setLocation(218,0);
  surface.setTitle("Gesture Recognizer");
  sketch_icon = loadImage("drag.png");
  surface.setIcon(sketch_icon);
  size(300,234);
    
  JFrame frame = new JFrame(".: ICAR :.");
  frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  RG =new RecoGeste();
  RG.setOpaque(true);
  frame.setContentPane(RG);
  frame.setUndecorated(true);
  frame.setLocation(10,0);
  //Display the window.
  frame.pack();
  frame.setVisible(true);
  
  // 
  smooth();
  font = loadFont("TwCenMT-Regular-16.vlw");
  textFont(font);
  noStroke();
  fill(0);
  mae= FSM.INITIAL;
}

void draw() {
  background(255);
  // MAE à ajouter
  switch (mae) {
    case INITIAL:
      background(255);
      fill(0);
      text("Press (R) for gesture recognition\n\n(H) for help",50,50);  
      break;
      
    case RECOGNITION:
      background(255);
      textAlign(LEFT);
      fill(0);
      text(RG.getGesture(),20,20);
      break;
      
   case HELP:
      background(255);
      fill(0);
      text("Press (R) for gesture recognition\n\n(L) to learn gesture\n(E) to export templates\n(I) to import templates\n(T) to display Templates name\n(H) for help",50,50);  
      break;
      
    default:
      break;
  }
}

void keyPressed() {
  switch (key) {
    case 'r': // RECOGNITION -  default state
    case 'R':
      mae = FSM.RECOGNITION;
      break;
     
    case 'h': // HELP
    case 'H':
      mae = FSM.HELP;
      break;
         
    default:
      break;
   }
}
