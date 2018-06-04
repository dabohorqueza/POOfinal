import controlP5.*;
import java.util.*;
ControlP5 one;
String periods, i, ann, grad;
boolean annuity = false;
boolean gradient = false;
boolean st=false;
int a;
int f=1;
StringList selecta;
void setup() {
  size (700, 700);
  one  =new ControlP5 (this);

  one.addTab("Graph").setColorBackground(color(0, 160, 100)).setColorLabel(color(255)).setColorActive(color(255, 128, 0));

  one.getTab("default").activateEvent(true).setLabel("Information").setId(1);

  one.getTab("Graph").activateEvent(true).setId(2);

  one.addTextfield("Number of periods").setPosition(40, 40).setSize(50, 20).setAutoClear(false);

  one.addTextfield("interest").setPosition(125, 40).setSize(40, 20).setAutoClear(false);

  one.addTextfield("# Annuities").setPosition(100, 80).setSize(30, 20).setAutoClear(false);

  one.addTextfield("# Gradients").setPosition(100, 120).setSize(30, 20).setAutoClear(false);

  one.addScrollableList("Select Annuity").setSize(200, 100).setBarHeight(20).setItemHeight(20).setPosition(200, 80);

  one.addScrollableList("Select Gradient").setSize(200, 100).setBarHeight(20).setItemHeight(20).setPosition(200, 120);

  one.addToggle("Annuity").setPosition(40, 80).setSize(50, 20);

  one.addToggle("Gradient") .setPosition(40, 120).setSize(50, 20);

  one.addBang("set").setPosition(500, 500).setSize(50, 50);
}

void draw () { 
  background (0);
  one.get(Textfield.class, "# Annuities").setVisible(annuity);
  one.get(Textfield.class, "# Gradients").setVisible(gradient);
  one.get(ScrollableList.class, "Select Annuity").setVisible(one.get(Textfield.class, "# Annuities").isFocus());
  boolean ps;
  ps = one.get(Textfield.class, "# Annuities").getIndex() != 0 ? true :false;
  if (one.get(Textfield.class, "# Annuities").isFocus() && ps ) {
    ann=one.get(Textfield.class, "# Annuities").getText();
    a =Integer.parseInt(ann);
    while (f < a+1) {
  one.get(ScrollableList.class, "Select Annuity"
f++;}
    print (selecta);
  }
}
void set() { 
  st=true;
  periods=one.get(Textfield.class, "Number of periods").getText();
  i=one.get(Textfield.class, "interest").getText();
  int  p = Integer.parseInt(periods);
  print (p);
  
}
void interest() {
  i=one.get(Textfield.class, "interest").getText();
}
void Annuity() {
  annuity = !annuity;
}
void Gradient() {
  gradient = !gradient;
}