//
//  ContentView.swift
//  CSPLACEMENT
//
//  Created by Millan Bhandari on 8/31/22.
//

import SwiftUI

struct ContentView: View {
    @State var imput1 = ""
    @State var imput2 = ""
    @State var final = 0
    var body: some View {
        HStack {
            Text("Num 1")
            TextField("", text: $imput1)
            Text("Num 2")
            TextField("", text: $imput2)
        }
        Button("Submit") {
            distance_between()
        }
        Text("\(final)")
    }
    func distance_between() {
        if let imputA = Int(imput1) {
            if let imputB = Int(imput2) {
                final = abs(imputA - imputB)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
