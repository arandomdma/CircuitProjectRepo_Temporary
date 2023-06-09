import java.util.*;
import java.io.*;
public class Component{
  private int type;
  private double REQsub;
  private double resistance;
  private double current;
  private double voltage;
  private double power;
  private int x;
  private int y;
  private boolean target; //allows startJunction / endJunction interaction
  private ArrayList<Component> followList;
  public Component(double Resistance, double Voltage, int x_, int y_, int Type) {
    voltage = Voltage;
    resistance = Resistance;
    type = Type;
    x=x_;
    y=y_;
    followList = new ArrayList<Component>();
  }
  //general get methods
  public double resistance() {
    return resistance;
  }

  public Component prev() {
    return null;
  }

  public double current() {
    return current;
  }

  public double voltage() {
    return voltage;
  }

  public double power() {
    return power;
  }

  public int getX() {
    return x;
  }

  public int getY() {
    return y;
  }

   public int type() {
     return type;
   }

  public ArrayList<Component> followList() {
    return followList;
  }
  /* These are essentially our set methods, that adjust the instance variables on a particular resistor. */
  public void addFollowList(Component newComp) {
    followList.add(newComp);
  }
  
  public void setFollowList(int pos, Component newComp) {
    followList.set(pos, newComp);
  }
  
  public void clearFollowList() {
    followList = new ArrayList<Component>();
  }
  
  public ArrayList<Component> prepFollowList() {
    return null;
  }

  public String toString() {
    return "R_"+resistance+" I_"+current+" V_"+voltage+" P_"+power+" X_"+x+" Y_"+y;
  }

  //general set methods
  public void setRes(double newRes) {
    resistance = newRes;
  }

  public void setVol(double newVolt) {
    voltage = newVolt;
  }

  public void setCur(double newCur) {
    current = newCur;
  }

  public void setPow(double newPow) {
    power = newPow;
  }

  //REQ related methods
  public double getREQsub() {
    return REQsub;
  }

  public double REQsub() {
    return REQsub;
  }

  public void setREQsub(double in) {
    REQsub = in;
  }

  //calculate for RIVP
  public void calculate() {
  }
  /////Methods need to find loop endings.
  public void trace() {
  }

  public void tracker(startJunction start) {
  }

  public void clearTrack() {
  }

      public void findPartner() {
    }

  public void setTarget(boolean val) {
    target = val;
  }

  public boolean target() {
    return target;
  }
  //Connection methods
  public boolean connectPre(Component newComp) {
    return true;
  }
  public boolean connectFol(Component newComp) {
   return true;
  }

    public Component setFol(Component newFol, int mode) {
    return null;
  }

    public Component setPre(Component newPre, int mode) {
    return null;
  }
}
