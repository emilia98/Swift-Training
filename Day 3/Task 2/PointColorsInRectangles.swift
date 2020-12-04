import Foundation
 
/*
TEAM: Emilia Nedyalkova, Svetli Kanchev
*/
func solve(_ rectangles : [Rectangle], _ x : Double, _ y : Double) {
     print(colorPoint(x, y, rectangles));
}

class Rectangle{
  var x1, y1, x2, y2: Double
  var color : String
  init(_ x1: Double, _ y1: Double, _ x2: Double, _ y2: Double, _ color: String) {
    self.x1 = x1
    self.y1 = y1
    self.x2 = x2
    self.y2 = y2
    self.color = color
  }
}

func isIn(_ x: Double, _ y: Double, _ rec: Rectangle) -> Bool {
   return x >= rec.x1 && y <= rec.y1 && x <= rec.x2 && y >= rec.y2
}

func colorPoint(_ x: Double, _ y: Double, _ recs: [Rectangle]) -> String{
  var color : String = "undefinded"
  
  for i in recs.reversed(){
    if isIn(x, y, i){
      color = i.color
    }
  }
  return color
}

var recs: [Rectangle] = [
    Rectangle(1, 5.5, 4, 4, "green"),
    Rectangle(2, 4, 5, 3, "blue"),
];

solve(recs, 2, 4)
solve(recs, 2, 4.5)
solve(recs, 3, 3)
solve(recs, 5, 2)