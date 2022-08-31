//
//  ContentView.swift
//  CSPLACEMENT
//
//  Created by Millan Bhandari on 8/31/22.
//

import SwiftUI

struct ContentView: View {
    @State var num1 = ""
    @State var num2 = ""
    @State var iseven = false
    @State var text = ""
    var body: some View {
        HStack {
            Text("Num 1")
            TextField("", text: $num1)
                .frame(width: 50, height: 50, alignment: .center)
            Text("Num 2")
            TextField("", text: $num2)
                .frame(width: 50, height: 50, alignment: .center)
            Button("Confirm") {
                both_even()
                update()
                
            }
        }
        Text(text)
    }
    func both_even() {
        if let firstnum = Int(num1) {
            if let secondnum = Int(num2) {
                if firstnum % 2 == 0 {
                    if secondnum % 2 == 0 {
                        iseven = true
                    }
                }
                else {
                    iseven = false
                }
            }
        }
    }
    func update() {
        if iseven == true {
            text = "true"
        }
        else {
            text = "false"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
