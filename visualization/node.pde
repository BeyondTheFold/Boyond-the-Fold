public class Node { 
  Integer index;
  Integer parentIndex;
  Node parent;
  ArrayList<Integer> childIndicies;
  ArrayList<Node> children;
  Integer childCount;
  String url;
  Date start;
  Integer duration;
  Boolean subDomain;
  ArrayList<Float> coordinates;
  ArrayList<Float> bezierAnchorA;
  ArrayList<Float> bezierAnchorB;
  Float angle;
 
  Node() {
    this.children = new ArrayList<Node>();
    this.childCount = 0;
  }
  
  public Node(Integer index, Integer parentIndex, String url, Date start, Integer duration, Boolean subDomain) {
    this.index = index;
    this.parentIndex = parentIndex;
    this.url = url;
    this.start = start;
    this.duration = duration;
    this.subDomain = subDomain;
    this.childCount = 0;
  }
  
  Integer getDuration() {
    return(this.duration); 
  }
  
  Integer getParentIndex() {
    return(this.parentIndex); 
  }
  
  Integer getIndex() {
     return(this.index); 
  }
  
  ArrayList<Integer> getChildrenIndicies() {
     return(this.childIndicies); 
  }
  
  void setParent(Node parent) {
    this.parent = parent; 
  }
  
  Node getParent() {
    return(this.parent); 
  }
  
  void setIndex(Integer index) {
    this.index = index; 
  }
  
  void addChild(Node child) {
    this.children.add(child);
    
    if(child != null) {
      ++this.childCount;
    } else {
      println("Error: trying to add null child"); 
    }
  }
  
  ArrayList<Node> getChildren() {
    return(children); 
  }
  
  void setCoordinates(ArrayList<Float> coordinates) {
    this.coordinates = coordinates;
  }

  void setBezierAnchorA(ArrayList<Float> bezierAnchor) {
    this.bezierAnchorA = bezierAnchor;
  }
  
  void setBezierAnchorB(ArrayList<Float> bezierAnchor) {
    this.bezierAnchorB = bezierAnchor;
  }

  ArrayList<Float> getCoordinates() {
    return(this.coordinates);
  }
  
  ArrayList<Float> getBezierAnchorA() {
    return(this.bezierAnchorA);
  }
  
  ArrayList<Float> getBezierAnchorB() {
    return(this.bezierAnchorB);
  }
  
  void setAngle(Float angle) {
    this.angle = angle;
  }
  
  Float getAngle() {
     return(this.angle); 
  }
  
  void setDuration(Integer duration) {
    this.duration = duration;
  }
  
  Integer getChildCount() {
    return(this.childCount); 
  }
}