import Foundation
import Cocoa

struct Board {
    let fields: Array<String?>
    
    init() {
        self.fields = Array<String?>()
        for _ in 1...9 {
            fields.append(nil)
        }
    }
    
    mutating func move(index: Int, mark: String) {
        if self.fields[index] == nil {
            self.fields[index] = mark
        } else {
            println("Invalid move by \(mark): \(index) is already occupied")
        }
        
        checkIfGameOver()
    }
    
    mutating func move(coordinate: (Int, Int), mark: String) {
        self.move(index(coordinate)!, mark: mark)
    }
    
    func checkIfGameOver() {
        let winner = self.winner()
        
        if winner {
            println("We have a winner: \(winner)")
        } else {
            println("no winner")
        }
    }
    
    func winner() -> String? {
        let rowOwners: Array<String?> = [
            self.ownerOfRow((0,0), add: (1,0)),
            self.ownerOfRow((0,0), add: (0,1)),
            self.ownerOfRow((0,0), add: (1,1)),
            
            self.ownerOfRow((1,0), add: (0,1)),
            self.ownerOfRow((2,0), add: (0,1)),
            
            self.ownerOfRow((0,1), add: (1,0)),
            self.ownerOfRow((0,2), add: (1,0)),
        ]
        
        return rowOwners.reduce(nil, combine: { (winnerSoFar: String?, currentMark: String?) in
            if let actualWinnerSoFar = winnerSoFar {
                return actualWinnerSoFar
            } else {
                return currentMark
            }
        });
    }
    
    func index(coordinate: (Int, Int)) -> Int? {
        let (x,y) = coordinate
        
        if x >= 3 || y >= 3 {
            return nil
        }
        
        return y * 3 + x
    }
    
    func exists(coordinate: (Int,Int)) -> Bool {
        return self.index(coordinate) != nil
    }
    
    func ownerOfRow(initial: (Int, Int), add: (Int, Int)) -> String? {
        let (x,y) = initial
        let (addX, addY) = add
        
        let initialMark = self.fields[self.index(initial)!]
        let next = (x+addX, y+addY)
        
        if exists(next) {
            let nextFieldMark = self.ownerOfRow(next, add: add)
            if nextFieldMark == initialMark {
                return nextFieldMark
            } else {
                return nil
            }
        } else {
            return initialMark
        }
    }
}


var b = Board()

b.move((0,0), mark: "X")
b.move((1,0), mark: "Y")
b.move((1,1), mark: "X")
b.move((2,2), mark: "Y")
b.move((0,1), mark: "X")
b.move((0,2), mark: "Y")
b.move((2,1), mark: "X")