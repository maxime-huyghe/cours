import javax.swing.*;

import icar.*;
import icar.event.*;
import icar.util.*;

public class RecoGeste extends JPanel implements IcarRapportAnalyseListener {

  private IcarComponent RG;
  private String gesture;
  
  public RecoGeste() {
    String path = dataPath("")+"/formes.dat";
    this.gesture ="";
    
    RG = new IcarComponent("", 200,250); 
    RG.loadFromFile(path);
    RG.setTrainingMode(false);
    // RG.saveToFile(dataPath("") + "/essai.dat");    
    RG.addIcarRapportAnalyseListener((IcarRapportAnalyseListener) this);
    add(RG); 
  }
  
  public String getGesture() {
    return this.gesture;
  }
  
  public void processIcarRapportAnalyseEvent(IcarRapportAnalyseEvent e){   
    if (e.getMotif()!=null)
      this.gesture= e.getMotif();
    else
      this.gesture="";
  }
}
