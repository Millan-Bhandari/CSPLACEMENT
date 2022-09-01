import SwiftUI

struct ContentView: View {
    @State var num1 = ""
    @State var num2 = ""
    @State var text = 0
    var body: some View {
        HStack {
            Text("Num 1")
            TextField("", text: $num1)
            Text("Num 2")
            TextField("", text: $num2)
        }
        Button("Submit") {
            contains()
        }
        Text("\(text)")
    }
    func contains() {
        var numA = Int(num1)!
        let numB = Int (num2)!
        numA += 1
        let range: CountableRange<Int> = numA..<numB
        let array = Array(range)
        let total = array.reduce(0, +)
        text = total

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
