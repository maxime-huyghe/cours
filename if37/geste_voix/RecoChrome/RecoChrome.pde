/*
  Simple WebSocketServer example that can receive voice transcripts from Chrome 
  Requires WebSockets Library: https://github.com/alexandrainst/processing_websockets
  Requires ttslib: https://www.local-guru.net/blog/pages/ttslib
  
  1/ Launch processing sketch (create a websocket)
  2/ Open in Chrome the following url --> https://www.irit.fr/~Philippe.Truillet/stt.html
  3/ let's talk!
  
 */

import websockets.*;
import guru.ttslib.*;
import fr.dgac.ivy.*;

WebsocketServer socket;
TTS tts;
Ivy bus;

String message="";
int fontSize;
PFont f1;


void setup() {
  size(500,500);
  background(0);
  f1 = loadFont("TempusSansITC.vlw");
  fontSize=26;
  fill(255);
  textFont(f1,fontSize);
  socket = new WebsocketServer(this, 1337, "/Speechwebsocket");
  tts = new TTS();
  
  try {
    bus = new Ivy("reco_chrome", "reco_chrome is ready", null);
    bus.start("127.255.255.255:2010");
    
  } catch (IvyException ignored) {}
}

void draw() {

  if (message !="") {
     textSize(fontSize + random(8));
     text(message, random(width/2), random(height/2));
     message="";
  }
}

void webSocketServerEvent(String msg){
  message=msg;
  try {
    bus.sendMsg("Reco_Chrom Command="+msg);
  } catch (Exception ignored) {}
  // tts.speak("I've said " + message);
}
