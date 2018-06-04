import controlP5.*;
import java.util.*;
ControlP5 one;
String periods, i, ann, grad;
boolean annuity = false;
boolean gradient = false;
Chart myChart;
int a, p, g, sa;
int f=0;
int m=0;
int h=0;
StringList selecta;
void setup() {
  size (700, 700);
  one  =new ControlP5 (this);
  one.getTab("default").activateEvent(true).setLabel("Information").setId(1);
  one.addTextfield("Number of periods").setPosition(40, 40).setSize(50, 20).setAutoClear(false);
  one.addTextfield("interest").setPosition(125, 40).setSize(40, 20).setAutoClear(false);
  one.addTextfield("# Annuities").setPosition(100, 80).setSize(30, 20).setAutoClear(false);
  one.addTextfield("# Gradients").setPosition(100, 120).setSize(30, 20).setAutoClear(false);
  one.addScrollableList("Select Annuity").setSize(200, 100).setBarHeight(20).setItemHeight(10).setPosition(200, 80);
  one.addScrollableList("Select Period").setSize(300, 200).setBarHeight(40).setItemHeight(30).setPosition(200, 300);
  one.addScrollableList("Select Gradient").setSize(200, 100).setBarHeight(20).setItemHeight(20).setPosition(200, 120);
  one.addToggle("Annuity").setPosition(40, 80).setSize(50, 20);
  one.addToggle("Gradient") .setPosition(40, 120).setSize(50, 20);
  one.addBang("set").setPosition(500, 500).setSize(50, 50);
  one.addTextfield("ASTART").setPosition(450, 80).setSize(30, 20).setAutoClear(false);
  one.addTextfield("AEND").setPosition(500, 80).setSize(30, 20).setAutoClear(false);
  one.addTextfield("PAYMENT").setPosition(550, 80).setSize(30, 20).setAutoClear(false);
}

void draw () {
  background (0);
  one.get(Textfield.class, "# Annuities").setVisible(annuity);
  one.get(Textfield.class, "# Gradients").setVisible(gradient);
  boolean ps;
  boolean nop;
  boolean gr;
  boolean beg;
  boolean fina;
  boolean valu;
  nop = one.get(Textfield.class, "Number of periods").getIndex() != 0 ? true :false;
  ps = one.get(Textfield.class, "# Annuities").getIndex() != 0 ? true :false;
  gr = one.get(Textfield.class, "# Gradients").getIndex() != 0 ? true :false;
  beg =one.get(Textfield.class, "ASTART").getIndex() != 0 ? true :false;
  fina =one.get(Textfield.class, "AEND").getIndex() != 0 ? true :false;
  valu =one.get(Textfield.class, "PAYMENT").getIndex() != 0 ? true :false;

  one.get(ScrollableList.class, "Select Gradient").setVisible(gr).setType(ControlP5.DROPDOWN);
  one.get(ScrollableList.class, "Select Annuity").setVisible(ps).setType(ControlP5.DROPDOWN);
  one.get(ScrollableList.class, "Select Period").setVisible(nop).setType(ControlP5.DROPDOWN);
  one.get(Textfield.class, "AEND").setVisible(ps);
  one.get(Textfield.class, "ASTART").setVisible(ps);
  one.get(Textfield.class, "PAYMENT").setVisible(ps);
  one.get(ScrollableList.class, "Select Period").getId();
  if (ps) {
    int arrann[][];
    ann=one.get(Textfield.class, "# Annuities").getText();
    a =Integer.parseInt(ann);
    while (f<=a) {
      one.get(ScrollableList.class, "Select Annuity").addItem(str(f+1), f+1);
      f++;
    }
    while (f>a) {
      one.get(ScrollableList.class, "Select Annuity").removeItem(str(f));
      f--;
    }

    if (beg && fina && valu) {
      int ini = Integer.parseInt(one.get(Textfield.class, "ASTART").getText());
      int fin = Integer.parseInt(one.get(Textfield.class, "AEND").getText());
      int val = Integer.parseInt(one.get(Textfield.class, "PAYMENT").getText());
      stroke(#0326FF);
      Anualidad [][] an = new Anualidad[a][3];
    }
  }
  if (gr) {
    grad=one.get(Textfield.class, "# Gradients").getText();
    g =Integer.parseInt(ann);
    while (h<=g) {
      one.get(ScrollableList.class, "Select Gradient").addItem(str(h+1), h+1);
      h++;
    }
    while (h>g) {
      one.get(ScrollableList.class, "Select Gradient").removeItem(str(h));
      h--;
    }
  }
  if (nop) {
    periods=one.get(Textfield.class, "Number of periods").getText();
    p = Integer.parseInt(periods);
    stroke(#FF030B);

    Graficos g = new Graficos();
    g.divisions(p);




    while (m<=p) {
      one.get(ScrollableList.class, "Select Period").addItem(str(m+1), m+1);
      m++;
    }
    while (m>p) {
      one.get(ScrollableList.class, "Select Period").removeItem(str(m));
      m--;
    }
  }
}
void set() { 
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
void SelectAnnuity(int sea) {
  sea=sa;
}