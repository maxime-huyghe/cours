import fr.dgac.ivy.*;
import guru.ttslib.*;

Ivy bus = new Ivy("Appli", " Appli is ready", null);
TTS tts = new TTS();
FSM state = FSM.INITIAL;

void setup() {
  try {
    bus.start("127.255.255.255:2010");
      
    bus.bindMsg("^Reco_Chrom Command=.*draw.*", new IvyMessageListener() {
      public void receive(IvyClient client, String[] args) {
        switch (state) {
          case INITIAL:
            state = FSM.DRAWING;
            break;
          case DRAWING:
            break;
        }
      }
    });

    bus.bindMsg("^OneDolarIvy Template=(.*) Confidence=(.*)", new IvyMessageListener() {
      public void receive(IvyClient client, String[] args) {
        try {

          switch (state) {
            case INITIAL:
              tts.speak("I don't know what to do!");
              break;
            case DRAWING:
              tts.speak("You've just drawn a " + args[0] + " with " + args[1] + " confidence.");  
              state = FSM.INITIAL;
              break;
          }
        } catch (Exception e) {}

      }
    });

  } catch (IvyException ie) {}
}
