//
//  ContentView.swift
//  CSPLACEMENT
//
//  Created by Millan Bhandari on 8/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isodd = false
    @State private var num1 = ""
    @State private var text = ""
    var body: some View {
        TextField("Enter num", text: $num1)
        Button("Submit") {
            is_odd()
            returnvar()
        }
        Text(text)
    }
    func is_odd(){
        if let num = Int(num1) {
            if num % 2 == 0 {
                isodd = false
            }
            else {
                isodd = true
            }
        }
    }
    func returnvar() {
        if isodd == true {
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
