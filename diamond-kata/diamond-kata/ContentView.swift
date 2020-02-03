//
//  ContentView.swift
//  diamond-kata
//
//  Created by Siroratt Suntronsuk on 29/1/2563 BE.
//  Copyright © 2563 Siroratt Suntronsuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Diamond {
    func generateQuarterRow(size: Int, char: Character, index: Int) -> [Character] {
        return [Character](repeating: " ", count: size)
            .enumerated()
            .map { input -> Character in
                if input.offset == index { return char } else { return input.element }
        }
    }
    
    func produce(with character: String) -> String {
        if character == "A" {
            return "A"
        } else {
            return
            """
             A
            B B
             A
            """
        }
        
    }
}
