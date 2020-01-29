import UIKit
import XCTest

//http://codingdojo.org/kata/Diamond/
func diamond(character: Character) -> String {
    let upperLeftQuadrant = generateSeedQuadrant(char: character)
    let upperRightQuadrant = upperLeftQuadrant.map{ r -> [Character] in r.dropLast().reversed() }
    let upperHalf = zip(upperLeftQuadrant, upperRightQuadrant).map{ pair -> [Character] in
        let (rL, rR) = pair
        return rL + rR
    }
    
    let lowerHalf = upperHalf.dropLast().reversed()
    let whole = upperHalf + lowerHalf
    return whole.map{ r -> String in r.map{c -> String in String(c)}.joined(separator: "")}.joined(separator: "\n")
}

func generateSeedQuadrant(char: Character) -> [[Character]] {
    let anchor: Character = "A"
    if let input = char.asciiValue,
        let anchorValue = anchor.asciiValue {
        let size = input - anchorValue
        return (0...size).map{ i -> [Character] in
            generateRow(size: Int(size + 1), char: Character(UnicodeScalar(i + anchorValue)), position: Int(size - i))
        }
    } else {
        return [[]]
    }
}

func generateRow(size: Int, char: Character, position: Int) -> [Character] {
    
    return [Character](repeating: " ", count: size)
        .enumerated()
        .map { input in
            if input.offset == position { return char } else { return input.element }
    }
}
XCTAssertTrue(generateRow(size: 3, char: "B", position: 2) == [" ", " ", "B"])
XCTAssertTrue(generateSeedQuadrant(char: "A") == [["A"]], "seed A")
XCTAssertTrue(generateSeedQuadrant(char: "B") == [[" ", "A"], ["B"," "]], "seed B")
XCTAssertTrue(generateSeedQuadrant(char: "C") == [[" "," ", "A"], [" ","B"," "],["C"," "," "]], "seed C")

assert(diamond(character: "A") == "A", "input A")
let expectB = """
 A
B B
 A
"""

diamond(character: "B")  == expectB
print(diamond(character: "B"))
print(diamond(character: "F"))
